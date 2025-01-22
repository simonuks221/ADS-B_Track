# Workaroud as pool wrapper/pool functions do not work in Jupyter notebook
import numpy as np
from Functions.pool_wrapper import PoolWrapper
from Functions.optimisation import CorrelationOptimisationMinimize
from preambules_list import preambule_list, Preambule
from Functions.signal_generator import (
    generate_ADSB,
    digitize_signal,
    normalize_signal,
    correlate_signals,
    signal_start_pause_length,
)
from Functions.crc import generate_adsb_crc


# Configuration
amplitude = 1
data_bits = bytes([0x8D, 0x40, 0x6B, 0x90, 0x20, 0x15, 0xA6, 0x78, 0xD4, 0xD2, 0x20])
crc_bits = generate_adsb_crc(data_bits)
full_bits = data_bits + crc_bits
ideal_signal, filtered_signal, noisy_signal = generate_ADSB(amplitude, full_bits)
digitized_signal, digitized_t = digitize_signal(ideal_signal, 100e6, 10e6, 1.4, 2**10)
digitized_signal = normalize_signal(digitized_signal)

preamble_enum = Preambule.Ideal
preamble = preambule_list[preamble_enum.value]

expected_maximum = preamble.get_expected_maximum() + signal_start_pause_length
full_signal_max = expected_maximum + 40

target = np.array(digitized_signal)[:full_signal_max]

initial_guess = (
    np.random.uniform(0, 1, len(preamble.get_coefficients()))
    + preamble.get_coefficients()
)
initial_guess = normalize_signal(initial_guess)

target_impulse = [8, 10, 13, 15, 13, 10, 8]
target_impulse_side_length = int((len(target_impulse) - 1) / 2)
target_corr_left_size = expected_maximum - target_impulse_side_length
target_corr_right_size = full_signal_max - target_corr_left_size - len(target_impulse)
target_corr = np.concatenate(
    (np.zeros(target_corr_left_size), target_impulse, np.zeros(target_corr_right_size))
)

initial_corr = correlate_signals(target, initial_guess)

target_corr = initial_corr.copy()
target_corr[:80] = 0
target_corr[120:] = 0


def objective_func_minimize(args):
    optimizer_minimize = CorrelationOptimisationMinimize(target_corr, target)
    optimizer_minimize.optimize(initial_guess, 30000)
    minimize_result = optimizer_minimize.get_result()
    return (
        minimize_result,
        optimizer_minimize.get_history(),
        optimizer_minimize.objective_function,
    )


def optimisation_start():
    pool_wrapper = PoolWrapper()
    pool_wrapper.register_process(objective_func_minimize, ())
    return pool_wrapper.start_pool()
