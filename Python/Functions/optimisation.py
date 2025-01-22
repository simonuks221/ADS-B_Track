import numpy as np
from Functions.signal_generator import correlate_signals
from scipy.optimize import minimize


def find_diff_between_signals(sig1: np.ndarray, sig2: np.ndarray) -> int:
    assert len(sig1) == len(
        sig2
    ), f"Signals must have the same length {len(sig1)} and {len(sig2)}"
    abs = np.abs(sig2 - sig1)
    sum = np.sum(abs)
    return sum


class OptimizationTracker:
    def __init__(self):
        self.history = []

    def callback(self, xk):
        self.history.append(xk)


class CorrelationOptimisationMinimize:
    def __init__(self, target_corr, target):
        self._target_corr = target_corr
        self._target = target
        self._tracker = OptimizationTracker()

    def objective_function(self, mask):
        # target_noise = np.random.rand(len(target))/500
        target_noise = np.zeros(len(self._target))
        target_to_correlate = self._target + target_noise

        correlation = correlate_signals(target_to_correlate, mask)
        diff_between_signals = find_diff_between_signals(correlation, self._target_corr)
        return diff_between_signals

    def optimize(self, initial_guess: np.ndarray, max_iterations: int):
        self._result = minimize(
            self.objective_function,
            initial_guess,
            method="Nelder-Mead",
            callback=self._tracker.callback,
            options={"disp": True, "maxiter": max_iterations, "adaptive": True},
            # options={'disp': True, 'adaptive': True}
        )

    def get_result(self):
        return self._result

    def get_history(self):
        return self._tracker.history


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
