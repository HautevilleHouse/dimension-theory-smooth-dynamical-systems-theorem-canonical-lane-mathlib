import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure ErgodicDecompositionPackage where
  invariantMeasures : Type u
  ergodicComponents : Prop
  decompositionExists : Prop
  dimensionFormula : Prop

structure ErgodicDecompositionEvidence (E : ErgodicDecompositionPackage) where
  ergodicComponentsClosed : E.ergodicComponents
  decompositionExistsClosed : E.decompositionExists
  dimensionFormulaClosed : E.dimensionFormula

def ErgodicDecompositionClosed (E : ErgodicDecompositionPackage) : Prop :=
  E.ergodicComponents ∧ E.decompositionExists ∧ E.dimensionFormula

theorem ergodic_decomposition_closed_from_evidence
    (E : ErgodicDecompositionPackage) (Ev : ErgodicDecompositionEvidence E) :
    ErgodicDecompositionClosed E := by
  exact And.intro Ev.ergodicComponentsClosed
    (And.intro Ev.decompositionExistsClosed Ev.dimensionFormulaClosed)

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse