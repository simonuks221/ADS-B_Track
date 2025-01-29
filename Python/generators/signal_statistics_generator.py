import sys

# Used to import functions from parent directory
sys.path.append("../Python")
import numpy as np
import time
from Functions.pool_wrapper import PoolWrapper
from Functions.signal_generator import (
    generate_ADSB,
    digitize_signal,
    get_signal_energy,
    signal_start_pause_length,
)
from Functions.utils import SAMPLE_ADSB_BYTES
from Functions.preambule_variant import Correlation
from preambules_list import preambule_list

step_amount = 10  # How many steps thru amplitude
min_generation_amplitude = 0.2
max_generation_amplitude = 1.1
step_generation_amount = 100  # How many ADS-B signals to generate each step (same amplitude and different preambule masks)

total_generations = step_generation_amount * step_amount
all_amplitudes = np.linspace(
    min_generation_amplitude, max_generation_amplitude, step_amount
)


# Single process of generating ADSB statistical data depending on provided:
# ADSB amplituide index
#
# ADSB bits
def adsb_values_generator_process(args):
    amplitude_i, this_step, full_bits = args
    process_points = np.zeros(len(preambule_list))
    process_energies = np.zeros(len(preambule_list))
    curr_signal = generate_ADSB(all_amplitudes[amplitude_i], full_bits)[2]
    digitized_signal = digitize_signal(curr_signal, 100e6, 10e6, 1.4, 2**10)[0]
    for preambule_i in range(len(preambule_list)):
        curr_preambule = preambule_list[preambule_i]
        expected_maximum = (
            signal_start_pause_length + curr_preambule.get_expected_maximum()
        )
        curr_corr = curr_preambule.get_correlation(digitized_signal, Correlation.Basic)
        process_points[preambule_i] = curr_corr[expected_maximum]
        # Get all energy
        curr_energy = get_signal_energy(
            digitized_signal, len(curr_preambule.get_coefficients())
        )
        process_energies[preambule_i] = curr_energy[expected_maximum]
    return (amplitude_i, this_step, process_points, process_energies)


if __name__ == "__main__":
    print("Start")

    pool_wrapper = PoolWrapper()
    for amplitude_i in range(len(all_amplitudes)):
        for step_i in range(step_generation_amount):
            pool_wrapper.register_process(
                adsb_values_generator_process, (amplitude_i, step_i, SAMPLE_ADSB_BYTES)
            )
    all_results = pool_wrapper.start_pool()

    # Get all results and append them together
    print("Calculating results")
    all_energies = np.zeros((len(preambule_list), step_amount, step_generation_amount))
    all_points = np.zeros((len(preambule_list), step_amount, step_generation_amount))
    for result in all_results:
        result_amplitude_i, result_step, result_points, result_energies = result
        all_energies[:, result_amplitude_i, result_step] = result_energies
        all_points[:, result_amplitude_i, result_step] = result_points

    print("Finished calculating results")

    # Calculate energy metrics
    mean_energies = np.zeros((len(preambule_list), step_amount))
    mean_points = np.zeros((len(preambule_list), step_amount))
    lower_quantile_points = np.zeros((len(preambule_list), step_amount))
    higher_quantile_points = np.zeros((len(preambule_list), step_amount))

    for amplitude_i in range(step_amount):
        for preambule_i in range(len(preambule_list)):
            mean_energies[preambule_i, amplitude_i] = np.mean(
                all_energies[preambule_i, amplitude_i, :]
            )
            mean_points[preambule_i, amplitude_i] = np.mean(
                all_points[preambule_i, amplitude_i, :]
            )
            lower_quantile_points[preambule_i, amplitude_i] = np.quantile(
                all_points[preambule_i, amplitude_i, :], 0.25
            )
            higher_quantile_points[preambule_i, amplitude_i] = np.quantile(
                all_points[preambule_i, amplitude_i, :], 0.75
            )

    # Save generated data to file
    np.savez(
        "generators/generated/python_simulations.npz",
        test_amplitudes=all_amplitudes,
        all_energies=all_energies,
        all_points=all_points,
        mean_energies=mean_energies,
        mean_points=mean_points,
        lower_quantile_points=lower_quantile_points,
        higher_quantile_points=higher_quantile_points,
    )
    print("Success")
