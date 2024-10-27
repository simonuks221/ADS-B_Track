import numpy as np
from enum import Enum
from Functions.preambule_variant import (
    PreambuleVariant,
    PreambuleVariantDifferentiated,
    Correlation,
)
from Functions.signal_generator import td


def normalize_coefficients(array):
    total_sum = np.sum(array)
    if total_sum < 0:
        negative_sum = np.sum(array[array < 0])
        normalization_coef = (negative_sum - total_sum) / negative_sum
        array[array < 0] *= normalization_coef
    else:
        positive_sum = np.sum(array[array < 0])
        normalization_coef = (positive_sum - total_sum) / positive_sum
        array[array > 0] *= normalization_coef


this_prescaler = 1
amplitude = 1
fd_real = td * this_prescaler

# Assemble ideal signal
ideal_one = amplitude * np.concatenate(
    (np.ones(round(0.5e-6 / fd_real)), np.zeros(round(0.5e-6 / fd_real)))
)
ideal_zero = amplitude * np.concatenate(
    (np.zeros(round(0.5e-6 / fd_real)), np.ones(round(0.5e-6 / fd_real)))
)  # 100 ilgis

# Regular
ideal_preambule = amplitude * np.concatenate(
    (
        np.ones(round(0.5e-6 / fd_real)),
        np.zeros(round(0.5e-6 / fd_real)),
        np.ones(round(0.5e-6 / fd_real)),
        np.zeros(round(2e-6 / fd_real)),
        np.ones(round(0.5e-6 / fd_real)),
        np.zeros(round(0.5e-6 / fd_real)),
        np.ones(round(0.5e-6 / fd_real)),
    )
)
negative_preambule = amplitude * np.concatenate(
    (
        np.ones(round(0.5e-6 / fd_real)),
        -1 * np.ones(round(0.5e-6 / fd_real)),
        np.ones(round(0.5e-6 / fd_real)),
        -1 * np.ones(round(2e-6 / fd_real)),
        np.ones(round(0.5e-6 / fd_real)),
        -1 * np.ones(round(0.5e-6 / fd_real)),
        np.ones(round(0.5e-6 / fd_real)),
    )
)
normalized_preambule = np.copy(negative_preambule)
normalize_coefficients(normalized_preambule)

# Extended
extended_preambule = np.concatenate(
    (np.copy(ideal_preambule), np.zeros(round(3e-6 / fd_real)))
)
extended_negative_preambule = np.concatenate(
    (np.copy(negative_preambule), -1 * np.ones(round(3e-6 / fd_real)))
)
extended_normalized_preambule = np.copy(extended_negative_preambule)
normalize_coefficients(extended_normalized_preambule)

# Differentiated
diff_amount = 2
differentiated_preambule = np.concatenate(
    (ideal_preambule, np.zeros(diff_amount))
) - np.concatenate((np.zeros(diff_amount), ideal_preambule))


class Preambule(Enum):
    Ideal = 0
    Negative = 1
    NegativeNormalized = 2
    Extended = 3
    ExtendedNegative = 4
    ExtendedNormalized = 5
    Differentiated = 6


preambule_list = [
    PreambuleVariant("Ideal", ideal_preambule),
    PreambuleVariant("Negative", negative_preambule),
    PreambuleVariant("Negative normalized", normalized_preambule),
    PreambuleVariant("Extended", extended_preambule),
    PreambuleVariant("Extended negative", extended_negative_preambule),
    PreambuleVariant("Extended normalized", extended_normalized_preambule),
    PreambuleVariantDifferentiated(
        "Differentiated", differentiated_preambule, diff_amount
    ),
]
