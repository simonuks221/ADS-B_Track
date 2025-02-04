# Workaroud as pool wrapper/pool functions do not work in Jupyter notebook
import sys

# Used to import functions from parent directory
sys.path.append("../Python")
import numpy as np
from Functions.pool_wrapper import PoolWrapper
from Functions.optimisation import optimization_classes, MaskType, make_mask_from_type
from preambules_list import preambule_list, Preambule
from Functions.signal_generator import (
    generate_ADSB,
    digitize_signal,
    normalize_signal,
    correlate_signals,
    signal_start_pause_length,
)
from Functions.utils import SAMPLE_ADSB_BYTES


def create_target_corr_impulse(impulse_values: np.ndarray):
    target_impulse_side_length = int((len(impulse_values) - 1) / 2)
    target_corr_left_size = expected_maximum - target_impulse_side_length
    target_corr_right_size = (
        full_signal_max - target_corr_left_size - len(impulse_values)
    )
    target_corr = np.concatenate(
        (
            np.zeros(target_corr_left_size),
            impulse_values,
            np.zeros(target_corr_right_size),
        )
    )
    return target_corr


def create_target_corr_ideal(target_corr, offset_left: int, offset_right: int):
    ret = target_corr.copy()
    min_range = expected_maximum - offset_left
    max_range = expected_maximum + offset_right
    ret[:min_range] = 0
    ret[max_range:] = 0
    return ret


# Configuration of single signal
amplitude = 1
ideal_signal, filtered_signal, noisy_signal = generate_ADSB(
    amplitude, SAMPLE_ADSB_BYTES
)
ideal_digitized_signal, _ = digitize_signal(ideal_signal, 100e6, 10e6, 1.4, 2**10)
ideal_digitized_signal = normalize_signal(ideal_digitized_signal)
# digitized_signal, _ = digitize_signal(noisy_signal, 100e6, 10e6, 1.4, 2**10)
# digitized_signal = normalize_signal(digitized_signal)

# Configuration of preamble
mask_type = MaskType.MIDDLE_ZEROS
optimisation_targets = []
for optimization_class in optimization_classes:
    for preamble_i in [Preambule.Ideal, Preambule.Negative]:
        preamble = preambule_list[preamble_i.value]
        expected_maximum = preamble.get_expected_maximum() + signal_start_pause_length
        full_signal_max = expected_maximum + 30
        # digitized_signal = np.array(digitized_signal)[:full_signal_max]
        ideal_digitized_signal = np.array(ideal_digitized_signal)[:full_signal_max]

        mask_length = 0
        mask_coefficients = []
        # TODO: should be in preamble class itself
        if mask_type == MaskType.MIDDLE_ZEROS:
            mask_length = len(preamble.get_coefficients()) - 20
            mask_coefficients = np.concatenate(
                (
                    preamble.get_coefficients()[:15],
                    preamble.get_coefficients()[15 + 20 :],
                )
            )
        elif mask_type == MaskType.REGULAR:
            mask_length = len(preamble.get_coefficients())
            mask_coefficients = preamble.get_coefficients()

        initial_guess = np.random.uniform(0, 0.3, mask_length) + mask_coefficients
        ideal_corr = correlate_signals(
            ideal_digitized_signal, preamble.get_coefficients()
        )
        actual_initial_guess = make_mask_from_type(initial_guess, mask_type)
        initial_corr = correlate_signals(ideal_digitized_signal, actual_initial_guess)
        # TODO: Might need to compare to something else not target?
        target_corrs = [
            create_target_corr_impulse([7, 12, 18, 25, 18, 12, 7]),
            create_target_corr_impulse([25]),
            # create_target_corr_impulse([25, 25, 25]),
            create_target_corr_ideal(initial_corr, 20, 20),
            # create_target_corr_ideal(initial_corr, 30, 30),
            create_target_corr_ideal(initial_corr, 5, 40),
            # initial_corr.copy(),
        ]

        for target_corr in target_corrs:
            description = (
                f"{optimization_class.get_name()} for preamble {preamble.get_name()}"
            )
            optimisation_targets.append(
                (
                    target_corr,
                    initial_guess,
                    preamble_i,
                    optimization_class,
                    mask_type,
                    description,
                )
            )


def objective_func_minimize(args):
    (
        target_corr,
        initial_guess,
        preamble_i,
        optimization_class,
        mask_type,
        description,
    ) = args
    optimizer_minimize = optimization_class(
        target_corr, ideal_digitized_signal, mask_type
    )
    optimizer_minimize.optimize(initial_guess, 50000)  # 30000 ~ optimal
    minimize_result = optimizer_minimize.get_result()
    return (
        minimize_result.x,
        optimizer_minimize.get_history(),
        target_corr,
        initial_guess,
        preamble_i,
        optimizer_minimize.get_mask_type(),
        description,
    )


if __name__ == "__main__":
    pool_wrapper = PoolWrapper()
    for optimisation_target in optimisation_targets:
        pool_wrapper.register_process(objective_func_minimize, optimisation_target)
    all_results = pool_wrapper.start_pool()

    # Ensure all elements have the same shape
    all_results = [np.array(result, dtype=object) for result in all_results]

    np.savez(
        "generators/generated/optimisations_results.npz",
        all_results=all_results,
        digitized_signal=ideal_digitized_signal,
        allow_pickle=True,
    )
    print("Success")
