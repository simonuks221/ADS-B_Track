import numpy as np


def calc_mse(signal: np.ndarray, target: np.ndarray) -> int:
    residual = target - signal
    mse = np.mean(residual**2)
    return mse
