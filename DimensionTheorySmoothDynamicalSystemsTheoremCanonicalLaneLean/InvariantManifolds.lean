import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure InvariantManifoldsPackage where
  stableManifold : Type u
  unstableManifold : Type v
  centerManifold : Type w
  stableUnstableSplitting : Prop
  centerManifoldExists : Prop
  invariantUnderFlow : Prop

structure InvariantManifoldsEvidence (I : InvariantManifoldsPackage) where
  stableUnstableSplittingClosed : I.stableUnstableSplitting
  centerManifoldExistsClosed : I.centerManifoldExists
  invariantUnderFlowClosed : I.invariantUnderFlow

def InvariantManifoldsClosed (I : InvariantManifoldsPackage) : Prop :=
  I.stableUnstableSplitting ∧ I.centerManifoldExists ∧ I.invariantUnderFlow

theorem invariant_manifolds_closed_from_evidence
    (I : InvariantManifoldsPackage) (E : InvariantManifoldsEvidence I) :
    InvariantManifoldsClosed I := by
  exact And.intro E.stableUnstableSplittingClosed
    (And.intro E.centerManifoldExistsClosed E.invariantUnderFlowClosed)

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse