import DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure SmoothDynamicalSystem (M : Type) [TopologicalSpace M] [SmoothManifold M] where
  flow : ℝ → M → M
  smoothFlow : ∀ t, Smooth M M (flow t)
  groupLaw : ∀ s t x, flow (s + t) x = flow s (flow t x)
  identity : ∀ x, flow 0 x = x

structure SmoothDynamicalSystemEvidence (S : SmoothDynamicalSystem M) where
  smoothFlowClosed : S.smoothFlow
  groupLawClosed : S.groupLaw
  identityClosed : S.identity

def SmoothDynamicalSystemClosed (S : SmoothDynamicalSystem M) : Prop :=
  S.smoothFlow ∧ S.groupLaw ∧ S.identity

theorem smooth_dynamical_system_closed_from_evidence (S : SmoothDynamicalSystem M) (E : SmoothDynamicalSystemEvidence S) : SmoothDynamicalSystemClosed S := by
  exact And.intro E.smoothFlowClosed (And.intro E.groupLawClosed E.identityClosed)

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse