import HautevilleHouse.DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.EntropyPackage

/-!
# Dimension Theory Package: Hausdorff dimension, box dimension, and their relation to smooth dynamics.
-/

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure DimensionTheoryPackage {G : EntropyPackage} where
  hausdorffDimension : Type u
  boxDimension : Type v
  equalityForHyperbolicSets : Prop
  dimensionWithRespectToInvariantMeasure : Prop

structure DimensionTheoryEvidence {G : EntropyPackage} (D : DimensionTheoryPackage G) where
  hausdorffDimensionClosed : D.hausdorffDimension = True
  boxDimensionClosed : D.boxDimension = True
  equalityForHyperbolicSetsClosed : D.equalityForHyperbolicSets
  dimensionWithRespectToInvariantMeasureClosed : D.dimensionWithRespectToInvariantMeasure

def DimensionTheoryClosed {G : EntropyPackage} (D : DimensionTheoryPackage G) : Prop :=
  D.equalityForHyperbolicSets ∧ D.dimensionWithRespectToInvariantMeasure

theorem dimension_theory_closed_from_evidence {G : EntropyPackage} (D : DimensionTheoryPackage G) (E : DimensionTheoryEvidence D) :
    DimensionTheoryClosed D :=
  And.intro E.equalityForHyperbolicSetsClosed E.dimensionWithRespectToInvariantMeasureClosed

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse