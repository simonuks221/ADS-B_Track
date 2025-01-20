import numpy as np
import time
import multiprocessing
from Functions.signal_generator import (
    generate_ADSB,
    digitize_signal,
    get_signal_energy,
    signal_start_pause_length,
)
from Functions.crc import generate_adsb_crc
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
total_work = len(all_amplitudes) * step_generation_amount


# Prints the loading bar of completed processes
def print_loading_bar(iteration: int, total: int, start_time: time, length: int = 50):
    percent = ("{0:.1f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
    bar = "█" * filled_length + "-" * (length - filled_length)
    elapsed_time = time.time() - start_time
    print(f"\rProgress: |{bar}| {percent}% Complete {elapsed_time:.2f}s")


# Single process of generating ADSB statistical data depending on provided:
# ADSB amplituide index
#
# ADSB bits
def adsb_values_generator_process(amplitude_i: int, this_step: int, full_bits: bytes):
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
    # Configuration
    data_bits = bytes(
        [0x8D, 0x40, 0x6B, 0x90, 0x20, 0x15, 0xA6, 0x78, 0xD4, 0xD2, 0x20]
    )
    crc_bits = generate_adsb_crc(data_bits)
    full_bits = data_bits + crc_bits

    pool = multiprocessing.Pool(processes=multiprocessing.cpu_count())
    results = []
    start_time = time.time()
    for amplitude_i in range(len(all_amplitudes)):
        for step_i in range(step_generation_amount):
            result = pool.apply_async(
                adsb_values_generator_process, (amplitude_i, step_i, full_bits)
            )
            results.append(result)
    pool.close()
    # Processes are running
    last_results_len = -1
    while True:
        results_len = sum(1 for r in results if r.ready())
        if results_len != last_results_len:
            last_results_len = results_len
            print_loading_bar(last_results_len, total_work, start_time)
            if last_results_len == total_work:
                break
        time.sleep(1)

    pool.join()
    # Get all results and append them together
    print("Calculating results")
    all_energies = np.zeros((len(preambule_list), step_amount, step_generation_amount))
    all_points = np.zeros((len(preambule_list), step_amount, step_generation_amount))
    for result in results:
        result_amplitude_i, result_step, result_points, result_energies = result.get()
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
        "python_simulations.npz",
        test_amplitudes=all_amplitudes,
        all_energies=all_energies,
        all_points=all_points,
        mean_energies=mean_energies,
        mean_points=mean_points,
        lower_quantile_points=lower_quantile_points,
        higher_quantile_points=higher_quantile_points,
    )
    print("Success")
