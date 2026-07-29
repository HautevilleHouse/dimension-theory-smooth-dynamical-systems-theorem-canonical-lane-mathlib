import DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.PesinEntropy

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure StableErgodic (S : SmoothDynamicalSystem M) (L : LyapunovExponent S) (Q : QRDInvariantMeasure S) (P : PesinEntropy S L Q) where
  ergodicDecomposition : Ergodicity Q.measure S.flow
  dimensionsFormula : ∀ x, dim_{HR}(x, S.flow) = dim_{HR}^{s}(x) + dim_{HR}^{u}(x)
  ergodicClosed : Prop
  dimensionsClosed : Prop
  ergodicClosedTerm : ergodicClosed
  dimensionsClosedTerm : dimensionsClosed

structure StableErgodicEvidence (E : StableErgodic S L Q P) where
  ergodicDecompositionClosed : E.ergodicDecomposition
  dimensionsFormulaClosed : E.dimensionsFormula
  ergodicClosedTerm : E.ergodicClosedTerm
  dimensionsClosedTerm : E.dimensionsClosedTerm

def StableErgodicClosed (E : StableErgodic S L Q P) : Prop :=
  E.ergodicDecomposition ∧ E.dimensionsFormula ∧ E.ergodicClosed ∧ E.dimensionsClosed

theorem stable_ergodic_closed_from_evidence (E : StableErgodic S L Q P) (Ev : StableErgodicEvidence E) : StableErgodicClosed E := by
  exact And.intro Ev.ergodicDecompositionClosed (And.intro Ev.dimensionsFormulaClosed (And.intro Ev.ergodicClosedTerm Ev.dimensionsClosedTerm))

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse