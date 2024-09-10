import numpy as np
import time
import multiprocessing
from M_Functions.signal_generator import generate_ADSB, digitize_signal, get_signal_energy
from M_Functions.crc import generate_adsb_crc
from preambules_list import preambule_list

step_amount = 10 # How many steps thru amplitude
min_generation_amplitude = 0.2
max_generation_amplitude = 1.1
step_generation_amount = 5 # How many ADS-B signals to generate each step

def monitor_completion_process(result_queue: multiprocessing.Queue, total_work: int):
    work_done = 0
    start_time = time.time()
    print_loading_bar(0, total_work, start_time)
    while(True):
        #Wait for all work to be done
        result = result_queue.get()
        work_done += 1
        print_loading_bar(work_done, total_work, start_time)
        result_queue.task_done()
        if work_done == total_work:
            break

def print_loading_bar(iteration: int, total: int, start_time: time, length: int = 50):
    percent = ("{0:.1f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
    bar = '█' * filled_length + '-' * (length - filled_length)
    elapsed_time = time.time() - start_time
    print(f'\rProgress: |{bar}| {percent}% Complete {"{:.2f}".format(elapsed_time)}s')

def adsb_values_generator_process(amplitude: int, this_step: int, full_bits: bytes, result_queue: multiprocessing.Queue, processes_limit_semaphore):
    process_points = np.zeros(len(preambule_list))
    process_energies = np.zeros(len(preambule_list))
    # for generation_i in range(step_generation_amount):
    curr_signal = generate_ADSB(amplitude, full_bits)[2]
    digitized_signal = digitize_signal(curr_signal, 100E6, 10E6, 1.4, 2**10)[0]
    for preambule_i in range(len(preambule_list)):
        curr_preambule = preambule_list[preambule_i]
        curr_corr = curr_preambule.get_correlation(curr_signal)
        process_points[preambule_i] = curr_corr[curr_preambule.get_expected_maximum()]
        # Get all energy
        curr_energy = get_signal_energy(digitized_signal, len(curr_preambule.get_coefficients()))
        process_energies[preambule_i] = curr_energy[curr_preambule.get_expected_maximum()]
    # Worker done, return the results
    result_queue.put(1)
    processes_limit_semaphore.release()

if __name__ == "__main__":
    print('Start')
    # Configuration
    amplitude = 1
    data_bits = bytes([0x8D, 0x40, 0x6B, 0x90, 0x20, 0x15, 0xA6, 0x78, 0xD4, 0xD2, 0x20])
    crc_bits = generate_adsb_crc(data_bits)
    full_bits = data_bits + crc_bits

    total_generations = step_generation_amount * step_amount
    all_amplitudes = np.linspace(min_generation_amplitude, max_generation_amplitude, step_amount)

    all_energies = np.zeros((len(preambule_list), step_amount, step_generation_amount))
    all_points = np.zeros((len(preambule_list), step_amount, step_generation_amount))

    # Distribute workload to different processes
    # Each worker is responsible for
    result_queue = multiprocessing.JoinableQueue()
    total_work = len(all_amplitudes) * step_generation_amount
    processes_limit = multiprocessing.cpu_count() * 2
    processes_limit_semaphore = multiprocessing.Semaphore(processes_limit)
    workers = []
    monitor_process = multiprocessing.Process(target=monitor_completion_process, args=(result_queue, total_work))
    monitor_process.start()
    for amplitude_i in range(len(all_amplitudes)):
        for step_i in range(step_generation_amount):
            processes_limit_semaphore.acquire()
            worker_process = multiprocessing.Process(target=adsb_values_generator_process, args=(all_amplitudes[amplitude_i], step_i, full_bits, result_queue, processes_limit_semaphore))
            worker_process.start()
            workers.append(worker_process)
    # Wait for workers to finish
    for worker_process in workers:
        worker_process.join()
    monitor_process.join()

    # Calculate energy metrics
    mean_energies = np.zeros((len(preambule_list), step_amount))
    mean_points = np.zeros((len(preambule_list), step_amount))
    lower_quantile_points = np.zeros((len(preambule_list), step_amount))
    higher_quantile_points = np.zeros((len(preambule_list), step_amount))

    for amplitude_i in range(step_amount):
        for preambule_i in range(len(preambule_list)):
            mean_energies[preambule_i, amplitude_i] = np.mean(all_energies[preambule_i, amplitude_i, :])
            mean_points[preambule_i, amplitude_i] = np.mean(all_points[preambule_i, amplitude_i, :])
            lower_quantile_points[preambule_i, amplitude_i] = np.quantile(all_points[preambule_i, amplitude_i, :], 0.25)
            higher_quantile_points[preambule_i, amplitude_i] = np.quantile(all_points[preambule_i, amplitude_i, :], 0.75)

    # Save generated data to file
    np.savez('python_simulations.npz', all_energies=all_energies, all_points=all_points, mean_energies=mean_energies,
            mean_points=mean_points, lower_quantile_points=lower_quantile_points, higher_quantile_points=higher_quantile_points)
    print('Success')
