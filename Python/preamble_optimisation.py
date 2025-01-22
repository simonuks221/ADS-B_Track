# Workaroud as pool wrapper/pool functions do not work in Jupyter notebook
import numpy as np
from Functions.pool_wrapper import PoolWrapper
from Functions.optimisation import (
    CorrelationOptimisationMinimizeIntegralError,
    CorrelationOptimisationMinimize2MaxFraction,
    optimization_classes,
)
from preambules_list import preambule_list, Preambule
from Functions.signal_generator import (
    generate_ADSB,
    digitize_signal,
    normalize_signal,
    correlate_signals,
    signal_start_pause_length,
)
from Functions.crc import generate_adsb_crc


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
data_bits = bytes([0x8D, 0x40, 0x6B, 0x90, 0x20, 0x15, 0xA6, 0x78, 0xD4, 0xD2, 0x20])
crc_bits = generate_adsb_crc(data_bits)
full_bits = data_bits + crc_bits
ideal_signal, filtered_signal, noisy_signal = generate_ADSB(amplitude, full_bits)
digitized_signal, digitized_t = digitize_signal(ideal_signal, 100e6, 10e6, 1.4, 2**10)
digitized_signal = normalize_signal(digitized_signal)

# Configuration of preamble
optimisation_targets = []
for optimization_class in optimization_classes:
    for preamble_i in [Preambule.Ideal, Preambule.Negative]:
        preamble = preambule_list[preamble_i.value]
        expected_maximum = preamble.get_expected_maximum() + signal_start_pause_length
        full_signal_max = expected_maximum + 30
        digitized_signal = np.array(digitized_signal)[:full_signal_max]
        initial_guess = (
            np.random.uniform(0, 0.3, len(preamble.get_coefficients()))
            + preamble.get_coefficients()
        )
        # initial_guess = normalize_signal(initial_guess)

        initial_corr = correlate_signals(digitized_signal, initial_guess)
        initial_corr_max = max(initial_corr)
        # TODO: Might need to compare to something else not target?
        target_corrs = [
            create_target_corr_impulse([7, 12, 18, 25, 18, 12, 7]),
            create_target_corr_impulse([25]),
            create_target_corr_impulse([25, 25, 25]),
            create_target_corr_ideal(initial_corr, 20, 20),
            create_target_corr_ideal(initial_corr, 30, 30),
            create_target_corr_ideal(initial_corr, 5, 40),
            initial_corr.copy(),
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
                    description,
                )
            )


def objective_func_minimize(args):
    target_corr, initial_guess, preamble_i, optimization_class, description = args
    # CorrelationOptimisationMinimize2MaxFraction
    optimizer_minimize = optimization_class(target_corr, digitized_signal)
    optimizer_minimize.optimize(initial_guess, 60000)  # 30000 ~ optimal
    minimize_result = optimizer_minimize.get_result()
    return (
        minimize_result,
        optimizer_minimize.get_history(),
        target_corr,
        initial_guess,
        preamble_i,
        description,
    )


def optimization_start():
    pool_wrapper = PoolWrapper()
    for optimisation_target in optimisation_targets:
        pool_wrapper.register_process(objective_func_minimize, optimisation_target)
    return pool_wrapper.start_pool()
