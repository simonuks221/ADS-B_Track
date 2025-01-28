import numpy as np


# Returns (point_x, point_y) array of `correlation` values that are above `approximation`
def calculate_hit_points(
    correlation: np.ndarray, approximation: np.ndarray
) -> np.ndarray:
    if len(correlation) != len(approximation):
        raise ValueError(
            "Signal and correlation must have the same length, are: {len(signal)} and {len(correlation)}"
        )
    hit_points = np.array(
        [
            [index, hit_value]
            for index, hit_value in enumerate(correlation)
            if hit_value > approximation[index]
        ]
    ).T
    return hit_points


def calculate_error_rate(
    expected_points: np.ndarray, actual_points: np.ndarray
) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    if len(expected_points) == 0:
        raise ValueError("Expected points should be populated")
    false_positives = []
    false_negatives = []
    true_positives = []
    # Populate false positives
    if len(actual_points) == 0:
        # Populate false positives
        for j in range(len(expected_points[0, :])):
            false_negatives.append(1)
        return false_positives, false_negatives, true_positives

    for j in range(len(actual_points[0, :])):
        if actual_points[0, j] not in expected_points[0, :]:
            false_positives.append(1)
    # Populate false negatives and true positives
    for j in range(len(expected_points[0, :])):
        if expected_points[0, j] not in actual_points[0, :]:
            false_negatives.append(1)
        else:
            true_positives.append(1)
    return false_positives, false_negatives, true_positives
