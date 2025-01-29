from enum import Enum
import numpy as np
from preambules_list import Preambule
from Functions.signal_generator import generate_approx


class Approximation(Enum):
    MinQuantile = 0
    Mean = 1
    MaxQuantile = 2
    LastCommon = 3
    RestrictedLow = 4
    Last = 5


_APPROXIMATION_STRINGS = ["Min quantile", "Mean", "Max quantile"]


class ApproximationBase:
    def __init__(
        self,
        preamble: Preambule,
        approximation_type: Approximation,
        input_x: np.ndarray,
        input_y: np.ndarray,
    ):
        self.preamble = preamble
        self.approximation_type = approximation_type
        self.input_x = input_x
        self.input_y = input_y
        self.coefficients = []

    def get_name(self) -> str:
        return _APPROXIMATION_STRINGS[self.approximation_type.value]

    def generate_approximation(self, energy: np.ndarray) -> np.ndarray:
        return generate_approx(energy, self.coefficients)


class ApproximationRestrictedLow(ApproximationBase):
    def __init__(
        self,
        preamble: Preambule,
        approximation_type: Approximation,
        input_x: np.ndarray,
        input_y: np.ndarray,
        min_threshold: int,
    ):
        super().__init__(preamble, approximation_type, input_x, input_y)
        self._min_threshold = min_threshold

    def generate_approximation(self, energy: np.ndarray) -> np.ndarray:
        approximation = super().generate_approximation(energy)
        approximation[approximation < self._min_threshold] = self._min_threshold
        return approximation

    def get_name(self) -> str:
        return "Restricted low"
