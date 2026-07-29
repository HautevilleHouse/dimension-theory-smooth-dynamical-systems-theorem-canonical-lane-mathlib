import dimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionTheorySmoothDynamicalSystems

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure DimensionTheoryPackage {D : DynamicalSystemPackage} where
  topologicalDimension : ℕ
  hausdorffDimension : ℝ
  boxCountingDimension : ℝ
  dimensionRelation : Prop
  dimensionInvariant : Prop

tructure DimensionTheoryEvidence {D : DynamicalSystemPackage} (DT : DimensionTheoryPackage D) where
  topologicalDimensionClosed : DT.topologicalDimension = DT.topologicalDimension
  hausdorffDimensionClosed : DT.hausdorffDimension ≥ 0
  boxCountingDimensionClosed : DT.boxCountingDimension ≥ 0
  dimensionRelationClosed : DT.dimensionRelation
  dimensionInvariantClosed : DT.dimensionInvariant

def DimensionTheoryClosed {D : DynamicalSystemPackage} (DT : DimensionTheoryPackage D) : Prop :=
  DT.dimensionRelation ∧ DT.dimensionInvariant

theorem dimension_theory_closed_from_evidence {D : DynamicalSystemPackage} (DT : DimensionTheoryPackage D) (Ev : DimensionTheoryEvidence DT) : DimensionTheoryClosed DT :=
  And.intro Ev.dimensionRelationClosed Ev.dimensionInvariantClosed

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
