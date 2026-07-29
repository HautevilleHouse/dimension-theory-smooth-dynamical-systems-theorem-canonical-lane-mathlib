import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheorem

structure BowenCarrierDimensionPackage where
  bowenCarrier : Prop
  topologicalEntropy : Prop
  hausdorffDimensionBowen : Prop
  dimensionEntropyRelation : Prop

structure BowenCarrierDimensionEvidence (B : BowenCarrierDimensionPackage) where
  bowenCarrierClosed : B.bowenCarrier
  topologicalEntropyClosed : B.topologicalEntropy
  hausdorffDimensionBowenClosed : B.hausdorffDimensionBowen
  dimensionEntropyRelationClosed : B.dimensionEntropyRelation

def BowenCarrierDimensionClosed (B : BowenCarrierDimensionPackage) : Prop :=
  B.bowenCarrier ∧ B.topologicalEntropy ∧ B.hausdorffDimensionBowen ∧ B.dimensionEntropyRelation

theorem bowen_carrier_dimension_closed_from_evidence (B : BowenCarrierDimensionPackage)
    (E : BowenCarrierDimensionEvidence B) : BowenCarrierDimensionClosed B := by
  exact And.intro E.bowenCarrierClosed
    (And.intro E.topologicalEntropyClosed
      (And.intro E.hausdorffDimensionBowenClosed E.dimensionEntropyRelationClosed))

end DimensionTheorySmoothDynamicalSystemsTheorem
end HautevilleHouse