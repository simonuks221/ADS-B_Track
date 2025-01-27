import numpy as np
from enum import Enum
from Functions.signal_generator import correlate_signals, correlate_khintchine


class Correlation(Enum):
    Basic = 0
    Khintchine = 1


class PreambleVariant:
    def __init__(self, name, preambule):
        self.__name = name
        self.__coefficients = preambule

    def get_name(self):
        return self.__name

    def get_coefficients(self):
        return self.__coefficients

    def get_correlation(self: np.ndarray, signal: np.ndarray, type: Correlation):
        # Overridable method for getting correlation
        result = 0
        if type == Correlation.Basic:
            result = correlate_signals(signal, self.__coefficients)
        elif type == Correlation.Khintchine:
            result = correlate_khintchine(signal, self.__coefficients)
        return result

    def get_expected_maximum(self):
        return len(self.__coefficients)


class PreambuleVariantDifferentiated(PreambleVariant):
    def __init__(self, name, preambule, diff_amount):
        super().__init__(name, preambule)
        self.__diff_amount = diff_amount

    def get_correlation(self, signal, type: Correlation):
        diff_signal = (
            signal
            - np.concatenate((np.zeros(self.__diff_amount), signal))[0 : len(signal)]
        )
        return super().get_correlation(diff_signal, type)

    def get_expected_maximum(self):
        return self.__diff_amount + super().get_expected_maximum()
