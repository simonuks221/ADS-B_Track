import numpy as np
from enum import Enum
from Functions.preambule_variant import (
    PreambleVariant,
    PreambuleVariantDifferentiated,
)
from Functions.signal_generator import td


def normalize_coefficients(array_in: np.ndarray) -> np.ndarray:
    array = array_in.copy()
    total_sum = np.sum(array)
    if total_sum < 0:
        negative_sum = np.sum(array[array < 0])
        normalization_coef = (negative_sum - total_sum) / negative_sum
        array[array < 0] *= normalization_coef
    else:
        positive_sum = np.sum(array[array < 0])
        normalization_coef = (positive_sum - total_sum) / positive_sum
        array[array > 0] *= normalization_coef
    return array


_PRESCALER = 1
_AMPLITUDE = 1
_FD_REAL = td * _PRESCALER

# Assemble ideal signal
_IDEAL_ONE = _AMPLITUDE * np.concatenate(
    (np.ones(round(0.5e-6 / _FD_REAL)), np.zeros(round(0.5e-6 / _FD_REAL)))
)
_IDEAL_ZERO = _AMPLITUDE * np.concatenate(
    (np.zeros(round(0.5e-6 / _FD_REAL)), np.ones(round(0.5e-6 / _FD_REAL)))
)

# Regular
_IDEAL_PREAMBLE = _AMPLITUDE * np.concatenate(
    (
        _IDEAL_ONE,
        _IDEAL_ONE,
        np.zeros(round(1.5e-6 / _FD_REAL)),
        _IDEAL_ONE,
        np.ones(round(0.5e-6 / _FD_REAL)),
    )
)

# Negative
_NEGATIVE_PREAMBLE = np.where(_IDEAL_PREAMBLE == 0, -1, _IDEAL_PREAMBLE)
_NEGATIVE_NORMALIZED_PREAMBLE = normalize_coefficients(_NEGATIVE_PREAMBLE)

# Regular extended
extended_preambule = np.concatenate(
    (np.copy(_IDEAL_PREAMBLE), np.zeros(round(3e-6 / _FD_REAL)))
)

# Regular negative
_EXTENDED_NEGATIVE_PREAMBLE = np.concatenate(
    (np.copy(_NEGATIVE_PREAMBLE), -1 * np.ones(round(3e-6 / _FD_REAL)))
)
_EXTENDED_NORMALIZED_PREAMBLE = normalize_coefficients(_EXTENDED_NEGATIVE_PREAMBLE)

# Differentiated
_DIFF_AMOUNT = 2
_DIFFERENTIATED_PREAMBLE = np.concatenate(
    (_IDEAL_PREAMBLE, np.zeros(_DIFF_AMOUNT))
) - np.concatenate((np.zeros(_DIFF_AMOUNT), _IDEAL_PREAMBLE))

# Ideal expanded
_IDEAL_EXPANDED_PREAMBLE = np.concatenate((np.zeros(1), _IDEAL_PREAMBLE, np.zeros(1)))

# Optimised to reduce max error
_IDEAL_ONE_2 = _AMPLITUDE * np.concatenate(
    (
        np.ones(round(0.2e-6 / _FD_REAL)),
        np.zeros(round(0.1e-6 / _FD_REAL)),
        np.ones(round(0.2e-6 / _FD_REAL)),
        np.zeros(round(0.5e-6 / _FD_REAL)),
    )
)
_OPTIMISED_MAX_ERROR_PREAMBLE = np.concatenate(
    (
        _IDEAL_ONE_2,
        _IDEAL_ONE_2,
        np.zeros(round(1.5e-6 / _FD_REAL)),
        _IDEAL_ONE_2,
        np.ones(round(0.2e-6 / _FD_REAL)),
        np.zeros(round(0.1e-6 / _FD_REAL)),
        np.ones(round(0.2e-6 / _FD_REAL)),
    )
)


class Preambule(Enum):
    Ideal = 0
    Negative = 1
    NegativeNormalized = 2
    Extended = 3
    ExtendedNegative = 4
    ExtendedNormalized = 5
    Differentiated = 6
    IdealExpanded = 7
    OptimisedMaxError = 8
    Last = 9


preambule_list = [
    PreambleVariant("Ideal", _IDEAL_PREAMBLE),
    PreambleVariant("Negative", _NEGATIVE_PREAMBLE),
    PreambleVariant("Negative normalized", _NEGATIVE_NORMALIZED_PREAMBLE),
    PreambleVariant("Extended", extended_preambule),
    PreambleVariant("Extended negative", _EXTENDED_NEGATIVE_PREAMBLE),
    PreambleVariant("Extended normalized", _EXTENDED_NORMALIZED_PREAMBLE),
    PreambuleVariantDifferentiated(
        "Differentiated", _DIFFERENTIATED_PREAMBLE, _DIFF_AMOUNT
    ),
    PreambleVariant("Ideal expanded", _IDEAL_EXPANDED_PREAMBLE),
    PreambleVariant("Optimised for max error", _OPTIMISED_MAX_ERROR_PREAMBLE),
]
