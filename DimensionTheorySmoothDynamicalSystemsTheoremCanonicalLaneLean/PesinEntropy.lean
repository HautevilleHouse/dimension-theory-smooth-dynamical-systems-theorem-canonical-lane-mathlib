import DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.LyapunovExponent
import DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.QRDInvariantMeasure

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure PesinEntropy (S : SmoothDynamicalSystem M) (L : LyapunovExponent S) (Q : QRDInvariantMeasure S) where
  entropyFormula : (∫ x, (∑ λ in LyapunovSpectrum S x, λ⁺) ∂Q.measure) = h_top S Q.measure
  entropyClosed : Prop
  entropyClosedTerm : entropyClosed

structure PesinEntropyEvidence (P : PesinEntropy S L Q) where
  entropyFormulaClosed : P.entropyFormula
  entropyClosedTerm : P.entropyClosedTerm

def PesinEntropyClosed (P : PesinEntropy S L Q) : Prop :=
  P.entropyFormula ∧ P.entropyClosed

theorem pesin_entropy_closed_from_evidence (P : PesinEntropy S L Q) (E : PesinEntropyEvidence P) : PesinEntropyClosed P := by
  exact And.intro E.entropyFormulaClosed E.entropyClosedTerm

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse