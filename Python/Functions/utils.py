import numpy as np
from Functions.crc import generate_adsb_crc

_SAMPLE_DATA_BITS = bytes(
    [0x8D, 0x40, 0x6B, 0x90, 0x20, 0x15, 0xA6, 0x78, 0xD4, 0xD2, 0x20]
)


def calc_mse(signal: np.ndarray, target: np.ndarray) -> int:
    residual = target - signal
    mse = np.mean(residual**2)
    return mse


def generate_random_adsb_bytes() -> bytes:
    random_data_bytes = np.random.bytes(len(_SAMPLE_DATA_BITS))
    return random_data_bytes + generate_adsb_crc(_SAMPLE_DATA_BITS)


SAMPLE_ADSB_BYTES = _SAMPLE_DATA_BITS + generate_adsb_crc(_SAMPLE_DATA_BITS)
