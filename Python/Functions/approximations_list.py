from enum import Enum


class Approximation(Enum):
    MinQuantile = 0
    Mean = 1
    MaxQuantile = 2
    Last = 3


_APPROXIMATION_STRINGS = ["Min quantile", "Mean", "Max quantile"]


def get_approximation_name(approximation) -> str:
    if isinstance(approximation, Approximation):
        index = approximation.value
    elif isinstance(approximation, int):
        index = approximation
    else:
        raise ValueError("Input must be of type Approximation or int")
    return _APPROXIMATION_STRINGS[index]
