import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure SmoothDynamicalSystemBundle where
  baseManifold : Type u
  fiber : Type v
  smoothProjection : Prop
  vectorBundleStructure : Prop
  connectionDefined : Prop
  curvatureForm : Type w

structure SmoothDynamicalSystemBundleEvidence (B : SmoothDynamicalSystemBundle) where
  smoothProjectionClosed : B.smoothProjection
  vectorBundleStructureClosed : B.vectorBundleStructure
  connectionDefinedClosed : B.connectionDefined

def SmoothDynamicalSystemBundleClosed (B : SmoothDynamicalSystemBundle) : Prop :=
  B.smoothProjection ∧ B.vectorBundleStructure ∧ B.connectionDefined

theorem smooth_dynamical_system_bundle_closed_from_evidence
    (B : SmoothDynamicalSystemBundle) (E : SmoothDynamicalSystemBundleEvidence B) :
    SmoothDynamicalSystemBundleClosed B := by
  exact And.intro E.smoothProjectionClosed
    (And.intro E.vectorBundleStructureClosed E.connectionDefinedClosed)

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse