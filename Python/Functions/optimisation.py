import numpy as np
from Functions.signal_generator import correlate_signals
from scipy.optimize import minimize, OptimizeResult
from enum import Enum


class MaskType(Enum):
    REGULAR = 0
    MIDDLE_ZEROS = 1


def find_integral_error(sig1: np.ndarray, sig2: np.ndarray) -> int:
    assert len(sig1) == len(
        sig2
    ), f"Signals must have the same length, actual: {len(sig1)} and {len(sig2)}"
    abs = np.abs(sig2 - sig1)
    sum = np.sum(abs)
    return sum


def find_max_error(sig1: np.ndarray, sig2: np.ndarray) -> int:
    assert len(sig1) == len(
        sig2
    ), f"Signals must have the same length, actual: {len(sig1)} and {len(sig2)}"
    abs = np.abs(sig2 - sig1)
    max = np.max(abs)
    return max


def make_mask_with_middle_zeros(mask) -> np.ndarray:
    new_mask = np.concatenate((mask[:15], np.zeros(20), mask[15:]))
    return new_mask


def make_mask_from_type(mask: np.ndarray, mask_type: MaskType) -> np.ndarray:
    if mask_type == MaskType.REGULAR:
        return mask
    elif mask_type == MaskType.MIDDLE_ZEROS:
        return make_mask_with_middle_zeros(mask)
    else:
        assert False, "Unknown mask type"


class OptimizationTracker:
    def __init__(self):
        self.history = []
        self.f_values = []
        self.iterations = []
        self._save_interval = 100
        self._save_counter = 0

    def callback(self, intermediate_result: OptimizeResult):
        self._save_counter += 1
        if self._save_counter % self._save_interval == 0:
            self.history.append(intermediate_result.x)
            self.f_values.append(intermediate_result.fun)
            self.iterations.append(self._save_counter)


class CorrelationOptimisationMinimize:
    def __init__(
        self, target_corr, target, mask_type: MaskType = MaskType.MIDDLE_ZEROS
    ):
        self._target_corr = target_corr
        self._target = target
        self._tracker = OptimizationTracker()
        self._mask_type = mask_type

    # Gets a mask and correlates to the target signal
    # Used in children classes to compare the results
    def objective_function(self, mask) -> np.ndarray:
        actual_mask = make_mask_from_type(mask, self._mask_type)

        # noise_amplitude = 0.1
        # target_noise = np.random.normal(
        #     -noise_amplitude, noise_amplitude, len(self._target)
        # )
        target_noise = np.zeros(len(self._target))
        target_to_correlate = self._target + target_noise
        correlation = correlate_signals(target_to_correlate, actual_mask)
        return correlation

    def optimize(self, initial_guess: np.ndarray, max_iterations: int):
        self._result = minimize(
            self.objective_function,
            initial_guess,
            method="Nelder-Mead",
            callback=self._tracker.callback,
            options={"disp": False, "maxiter": max_iterations, "adaptive": True},
        )

    def get_result(self):
        return self._result

    def get_history(self):
        return (self._tracker.history, self._tracker.f_values, self._tracker.iterations)

    def get_mask_type(self) -> MaskType:
        return self._mask_type

    def get_name(self) -> str:
        assert False, "This should be implemented in children"


class CorrelationOptimisationMinimizeIntegralError(CorrelationOptimisationMinimize):
    def objective_function(self, mask):
        correlation = super().objective_function(mask)
        diff_between_signals = find_integral_error(correlation, self._target_corr)
        return diff_between_signals

    def get_name() -> str:
        return "Minimize integral error"


class CorrelationOptimisationMinimizeMaxError(CorrelationOptimisationMinimize):
    def objective_function(self, mask):
        correlation = super().objective_function(mask)
        max_error = find_max_error(correlation, self._target_corr)
        return max_error

    def get_name() -> str:
        return "Minimize maximum error"


class CorrelationOptimisationMinimize2MaxFraction(CorrelationOptimisationMinimize):
    def objective_function(self, mask):
        correlation = super().objective_function(mask)
        original_max_point_idx = np.argmax(self._target_corr)
        original_max_point_value = self._target_corr[original_max_point_idx]

        new_max_point_value = correlation[original_max_point_idx]
        new_second_max_point_idx = np.argmax(
            correlation[: (original_max_point_idx - 5)]
        )
        new_second_max_point_value = correlation[new_second_max_point_idx]

        if new_max_point_value != 0:
            fraction = new_second_max_point_value / new_max_point_value
        else:
            fraction = new_second_max_point_value

        return fraction

    def get_name() -> str:
        return "Minimize fraction of expected max and second highest"


optimization_classes = [
    CorrelationOptimisationMinimizeIntegralError,
    CorrelationOptimisationMinimizeMaxError,
    CorrelationOptimisationMinimize2MaxFraction,
]

# Minimal noise (almost none)
# def objective_function(mask):
#     # target_noise = np.random.rand(len(target))/5000
#     # # target_noise = np.zeros(len(target))
#     # target_to_correlate = target + target_noise

#     correlation = correlate_signals(target, mask)
#     return -np.max(correlation)  # Maximize correlation by minimizing its negative


# With impulse characteristic

# bounds = [(-1, 1)] * len(initial_guess)
# result = minimize(
#     objective_function,
#     initial_guess,
#     args=(),
#     method='BFGS',
#     callback=tracker.callback,
#     bounds=bounds,
#     constraints=None,
#     options={'disp': True, 'maxiter': 1000}
# )
