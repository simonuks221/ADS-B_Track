import numpy as np
from M_Functions.signal_generator import *

class PreambuleVariant:
    def __init__(self, name, preambule):
        self.__name = name
        self.__coefficients = preambule

    def get_name(self):
        return self.__name

    def get_coefficients(self):
        return self.__coefficients

    def get_correlation(self, signal):
        #Overridable method for getting correlation
        return correlate_signals(signal, self.__coefficients)

    def get_expected_maximum(self):
        return len(self.__coefficients)

class PreambuleVariantDifferentiated(PreambuleVariant):
    def __init__(self, name, preambule, diff_amount):
        super().__init__(name, preambule)
        self.__diff_amount = diff_amount

    def get_correlation(self, signal):
        diff_signal = signal - np.concatenate((np.zeros(self.__diff_amount),signal))[0:len(signal)]
        return super().get_correlation(diff_signal)

    def get_expected_maximum(self):
        return self.__diff_amount + super().get_expected_maximum()
