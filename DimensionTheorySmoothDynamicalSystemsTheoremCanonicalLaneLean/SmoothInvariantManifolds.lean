import dimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionTheorySmoothDynamicalSystems

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure InvariantManifoldPackage {D : DynamicalSystemPackage} where
  stableManifoldExists : Prop
  unstableManifoldExists : Prop
  centerManifoldExists : Prop
  invariantFoliation : Prop
  smoothnessClass : ℕ

tructure InvariantManifoldEvidence {D : DynamicalSystemPackage} (I : InvariantManifoldPackage D) where
  stableManifoldExistsClosed : I.stableManifoldExists
  unstableManifoldExistsClosed : I.unstableManifoldExists
  centerManifoldExistsClosed : I.centerManifoldExists
  invariantFoliationClosed : I.invariantFoliation
  smoothnessClassClosed : I.smoothnessClass = I.smoothnessClass

def InvariantManifoldClosed {D : DynamicalSystemPackage} (I : InvariantManifoldPackage D) : Prop :=
  I.stableManifoldExists ∧ I.unstableManifoldExists ∧ I.centerManifoldExists ∧ I.invariantFoliation

theorem invariant_manifold_closed_from_evidence {D : DynamicalSystemPackage} (I : InvariantManifoldPackage D) (Ev : InvariantManifoldEvidence I) : InvariantManifoldClosed I :=
  And.intro Ev.stableManifoldExistsClosed (And.intro Ev.unstableManifoldExistsClosed (And.intro Ev.centerManifoldExistsClosed Ev.invariantFoliationClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
