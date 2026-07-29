import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheorem

structure AttractorDimensionPackage where
  attractorSet : Prop
  boxCountingDimension : Prop
  hausdorffDimension : Prop
  dimensionEquality : Prop

structure AttractorDimensionEvidence (P : AttractorDimensionPackage) where
  attractorSetClosed : P.attractorSet
  boxCountingDimensionClosed : P.boxCountingDimension
  hausdorffDimensionClosed : P.hausdorffDimension
  dimensionEqualityClosed : P.dimensionEquality

def AttractorDimensionClosed (P : AttractorDimensionPackage) : Prop :=
  P.attractorSet ∧ P.boxCountingDimension ∧ P.hausdorffDimension ∧ P.dimensionEquality

theorem attractor_dimension_closed_from_evidence (P : AttractorDimensionPackage)
    (E : AttractorDimensionEvidence P) : AttractorDimensionClosed P := by
  exact And.intro E.attractorSetClosed
    (And.intro E.boxCountingDimensionClosed
      (And.intro E.hausdorffDimensionClosed E.dimensionEqualityClosed))

end DimensionTheorySmoothDynamicalSystemsTheorem
end HautevilleHouse