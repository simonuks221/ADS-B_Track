import numpy as np
import scipy.signal as signal
import matplotlib.pyplot as plt
from typing import Tuple

signal_start_pause_length = 10
fd = 10e6
td = 1 / fd
t_prescaler = 10

last_generated_signal_length = 0
last_digitized_signal_length = 0


def generate_ADSB(amplitude: int, bytes: bytes, pause: int = signal_start_pause_length):
    global last_generated_signal_length
    # Assemble ideal signal
    ideal_one = amplitude * np.concatenate(
        (
            np.ones(round(0.5e-6 / td * t_prescaler)),
            np.zeros(round(0.5e-6 / td * t_prescaler)),
        )
    )
    ideal_zero = amplitude * np.concatenate(
        (
            np.zeros(round(0.5e-6 / td * t_prescaler)),
            np.ones(round(0.5e-6 / td * t_prescaler)),
        )
    )  # 100ilgis

    ideal_preambule = amplitude * np.concatenate(
        (
            np.zeros(pause * t_prescaler),
            np.ones(round(0.5e-6 / td * t_prescaler)),
            np.zeros(round(0.5e-6 / td * t_prescaler)),
            np.ones(round(0.5e-6 / td * t_prescaler)),
            np.zeros(round(2e-6 / td * t_prescaler)),
            np.ones(round(0.5e-6 / td * t_prescaler)),
            np.zeros(round(0.5e-6 / td * t_prescaler)),
            np.ones(round(0.5e-6 / td * t_prescaler)),
        )
    )
    ideal_pause = amplitude * np.zeros(round(3e-6 / td * t_prescaler))
    ideal_adsb_signal = np.concatenate(
        (ideal_preambule, ideal_pause, np.zeros(len(ideal_zero) * (len(bytes) * 8)))
    )  # was -h on len(bits_array)#%500+300+100*strlen

    bit_start_index = len(ideal_preambule) + len(ideal_pause)
    for byte in bytes:
        for i in range(0, 8):
            if ((byte >> i) & 0x01) == 0:
                ideal_adsb_signal[
                    bit_start_index : bit_start_index + len(ideal_zero)
                ] = ideal_zero
            else:
                ideal_adsb_signal[
                    bit_start_index : bit_start_index + len(ideal_zero)
                ] = ideal_one
            bit_start_index += len(ideal_zero)

    # Filter ideal signal with 2 MHz filter
    f_cutoff = 2e6
    filter_order = 4
    filter_b, filter_a = signal.butter(
        filter_order, f_cutoff / (fd * t_prescaler / 2), btype="low", analog=False
    )
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

    # Make noise
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

    # Clip signal so no negative values remain
    noisy_ideal_signal = np.clip(noisy_ideal_signal, 0, max(noisy_ideal_signal))

    last_generated_signal_length = len(noisy_ideal_signal)

    return ideal_adsb_signal, filtered_signal, noisy_ideal_signal


def digitize_signal(
    signal: np.ndarray, fs_original: int, fs_target: int, max: int, quant_levels: int
) -> Tuple[np.ndarray, np.ndarray]:
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
    # Leave first mask amount of values uncorrelated
    for i in range(len(mask), len(base_signal)):
        result[i] = np.sum(base_signal[i - len(mask) : i] * mask)
    return result


def correlate_khintchine(base_signal: np.ndarray, mask: np.ndarray) -> np.ndarray:
    full_mask = np.concatenate((mask, np.zeros(len(base_signal) - len(mask))))

    fft_signal = np.fft.fft(base_signal)
    fft_replica_conj = np.conj(np.fft.fft(full_mask))

    cross_corr = np.fft.ifft(fft_signal * fft_replica_conj)
    cross_corr = np.concatenate((np.zeros(len(mask)), cross_corr))
    return cross_corr


def get_signal_energy(signal: np.ndarray, mask_length: int) -> np.ndarray:
    energy = np.zeros(len(signal))
    for i in range(mask_length, len(signal)):
        energy[i] = np.sum(
            np.abs(signal[(i - mask_length) : i] * signal[(i - mask_length) : i])
        )
        energy[i] /= mask_length
    return energy


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


def generate_approx(energy: np.ndarray, coeff: np.ndarray) -> np.ndarray:
    approximation = np.zeros(len(energy))
    for i in range(len(energy)):
        approximation[i] = energy[i] ** 2 * coeff[0] + energy[i] * coeff[1] + coeff[2]
    return approximation


def get_signal_history(signal: np.ndarray, point: int, length: int) -> np.ndarray:
    return signal[point - length : point]


def generate_fft(
    signal: np.ndarray, sampling_rate_hz: int, padding: int = 0
) -> Tuple[np.ndarray, np.ndarray]:
    padded_signal = np.concatenate((signal, np.zeros(padding)))
    S = np.abs(np.fft.fft(padded_signal))
    N = len(S)
    n = np.arange(N)
    T = N / sampling_rate_hz
    freq = n / T
    # S = 20 * np.log10(S / max(S))
    return (freq, S)
