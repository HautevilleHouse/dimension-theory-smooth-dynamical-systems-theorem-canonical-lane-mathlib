import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.EntropyDimension
import HautevilleHouse.DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.LyapunovSpectrum
import HautevilleHouse.DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.BowenFormula

/-!
# Final Theorem: Dimension Theory Smooth Dynamical Systems

This module defines the constrained closure for the Dimension Theory of Smooth
Dynamical Systems theorem. The closure aggregates the entropy dimension,
Lyapunov spectrum, and Bowen formula packages into the admissible-class
framework.
-/

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

open HautevilleHouse.DimensionTheorySmoothDynamicalSystems

def ConstrainedDimensionTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dimension_theory_endgame (A : AdmissibleClass) :
    ConstrainedDimensionTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
