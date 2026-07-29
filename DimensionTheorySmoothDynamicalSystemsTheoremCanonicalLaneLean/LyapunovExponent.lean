import DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.SmoothDynamicalSystem

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure LyapunovExponent (S : SmoothDynamicalSystem M) where
  lyapExponent : M → ℝ
  upperBound : ℝ
  osedelecCondition : ∀ x, lyapExponent x ≤ upperBound
  lyapunovClosed : Prop
  lyapunovClosedTerm : lyapunovClosed

structure LyapunovExponentEvidence (L : LyapunovExponent S) where
  osedelecConditionClosed : L.osedelecCondition
  lyapunovClosedTerm : L.lyapunovClosedTerm

def LyapunovExponentClosed (L : LyapunovExponent S) : Prop :=
  L.osedelecCondition ∧ L.lyapunovClosed

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponent S) (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.osedelecConditionClosed E.lyapunovClosedTerm

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse