import numpy as np
from Functions.signal_generator import correlate_signals
from scipy.optimize import minimize, OptimizeResult


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


class OptimizationTracker:
    def __init__(self):
        self.history = []
        self.f_values = []

    def callback(self, intermediate_result: OptimizeResult):
        self.history.append(intermediate_result.x)
        self.f_values.append(intermediate_result.fun)


class CorrelationOptimisationMinimize:
    def __init__(self, target_corr, target):
        self._target_corr = target_corr
        self._target = target
        self._tracker = OptimizationTracker()

    def objective_function(self, mask) -> np.ndarray:
        # target_noise = np.random.rand(len(target))/500
        target_noise = np.zeros(len(self._target))
        target_to_correlate = self._target + target_noise
        correlation = correlate_signals(target_to_correlate, mask)
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
        return (self._tracker.history, self._tracker.f_values)

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
        fraction = new_second_max_point_value / new_max_point_value
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
