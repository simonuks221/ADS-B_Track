import numpy as np
import scipy.signal as signal
import matplotlib.pyplot as plt
from typing import Tuple

signal_start_pause_length = 10
fd = 10E6
td = 1/fd
t_prescaler = 10

last_generated_signal_length = 0
last_digitized_signal_length = 0

def generate_ADSB(amplitude: int, bytes: bytes, pause : int = signal_start_pause_length):
    global last_generated_signal_length
    # Assemble ideal signal
    ideal_one = amplitude*np.concatenate((np.ones(round(0.5E-6/td*t_prescaler)), np.zeros(round(0.5E-6/td*t_prescaler))))
    ideal_zero = amplitude*np.concatenate((np.zeros(round(0.5E-6/td*t_prescaler)), np.ones(round(0.5E-6/td*t_prescaler)))) #100ilgis

    ideal_preambule = amplitude*np.concatenate((np.zeros(pause*t_prescaler), np.ones(round(0.5E-6/td*t_prescaler)),  np.zeros(round(0.5E-6/td*t_prescaler)), np.ones(round(0.5E-6/td*t_prescaler)), np.zeros(round(2E-6/td*t_prescaler)), np.ones(round(0.5E-6/td*t_prescaler)), np.zeros(round(0.5E-6/td*t_prescaler)), np.ones(round(0.5E-6/td*t_prescaler))))
    ideal_pause = amplitude*np.zeros(round(3E-6/td*t_prescaler))
    ideal_adsb_signal = np.concatenate((ideal_preambule, ideal_pause, np.zeros(len(ideal_zero)*(len(bytes)*8)))) # was -h on len(bits_array)#%500+300+100*strlen

    bit_start_index = len(ideal_preambule) + len(ideal_pause)
    for byte in bytes:
        for i in range(0, 8):
            if(((byte >> i) & 0x01) == 0):
                ideal_adsb_signal[bit_start_index : bit_start_index + len(ideal_zero)] = ideal_zero
            else:
                ideal_adsb_signal[bit_start_index : bit_start_index + len(ideal_zero)] = ideal_one
            bit_start_index += len(ideal_zero)

    #Filter ideal signal with 2 MHz filter
    f_cutoff = 2E5 #TODO: why 2E5?
    filter_order = 4
    filter_b, filter_a = signal.butter(filter_order, f_cutoff / (fd / 2), 'low')
    filtered_signal = signal.filtfilt(filter_b, filter_a, ideal_adsb_signal)
    # w, h = signal.freqs(b, a)
    # plt.semilogx(w,abs(h))
    # plt.title('Butterworth filter frequency response')
    # plt.xlabel('Frequency [radians / second]')
    # plt.ylabel('Amplitude [dB]')
    # plt.margins(0, 0.1)
    # plt.grid(which='both', axis='both')
    # plt.axvline(100, color='green')
    # plt.show()

    #Make noise
    mean = 0.1
    std_dev = 0.5
    noise = np.random.normal(loc=mean, scale=std_dev, size=len(filtered_signal))
    # plt.figure(figsize=(10, 4))
    # plt.plot(noise, label='Random Normal Noise')
    # plt.title('Generated Random Normal Noise')
    # plt.xlabel('Sample Index')
    # plt.ylabel('Amplitude')
    # plt.legend()
    # plt.show()
    noise_filtered = signal.filtfilt(filter_b, filter_a, noise)
    noisy_ideal_signal = filtered_signal + noise_filtered

    #Clip signal so no negative values remain
    noisy_ideal_signal = np.clip(noisy_ideal_signal, 0, max(noisy_ideal_signal))

    last_generated_signal_length = len(noisy_ideal_signal)

    return ideal_adsb_signal, filtered_signal, noisy_ideal_signal

def digitize_signal(signal: np.ndarray, fs_original: int, fs_target: int, max: int, quant_levels: int) -> Tuple[np.ndarray, np.ndarray]:
    global last_digitized_signal_length
     # Create time vector for the original signal
    t_original = np.arange(0, len(signal) / fs_original, 1 / fs_original)

    # Create time vector for the digitized signal
    t_digitized = np.arange(0, t_original[-1], 1 / fs_target)

    # Interpolate the original signal to the new sampling rate
    digitized_signal = np.interp(t_digitized, t_original, signal)

    quantized_signal = np.clip(digitized_signal, 0, max)
    quantized_signal = np.round(quantized_signal / max * (quant_levels))
    last_digitized_signal_length = len(quantized_signal)
    return quantized_signal, t_digitized

def correlate_signals(base_signal: np.ndarray, mask: np.ndarray) -> np.ndarray:
    result = np.zeros(len(base_signal))
    #Leave first mask amount of values uncorrelated
    for i in range(len(mask), len(base_signal)):
        result[i] = np.sum(base_signal[i - len(mask) : i] * mask)
    return result

def normalize_signal(signal: np.ndarray) -> np.ndarray:
    max = np.max(signal)
    signal /= max
    return signal

def get_last_generated_signal_length() -> int:
    global last_generated_signal_length
    return last_generated_signal_length

def get_last_digitized_signal_length() -> int:
    global last_digitized_signal_length
    return last_digitized_signal_length