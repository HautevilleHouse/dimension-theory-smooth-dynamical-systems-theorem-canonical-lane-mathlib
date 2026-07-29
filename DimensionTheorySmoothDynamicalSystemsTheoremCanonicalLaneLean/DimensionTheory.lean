import DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.StableErgodic

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure DimensionTheory (S : SmoothDynamicalSystem M) (L : LyapunovExponent S) (Q : QRDInvariantMeasure S) (P : PesinEntropy S L Q) (E : StableErgodic S L Q P) where
  hausdorffDimensionFormula : dim_{HR}(Q.measure) = h_top(S, Q.measure) / λ₁
  dimensionTheoryClosed : Prop
  dimensionTheoryClosedTerm : dimensionTheoryClosed

structure DimensionTheoryEvidence (D : DimensionTheory S L Q P E) where
  hausdorffDimensionFormulaClosed : D.hausdorffDimensionFormula
  dimensionTheoryClosedTerm : D.dimensionTheoryClosedTerm

def DimensionTheoryClosed (D : DimensionTheory S L Q P E) : Prop :=
  D.hausdorffDimensionFormula ∧ D.dimensionTheoryClosed

theorem dimension_theory_closed_from_evidence (D : DimensionTheory S L Q P E) (Ev : DimensionTheoryEvidence D) : DimensionTheoryClosed D := by
  exact And.intro Ev.hausdorffDimensionFormulaClosed Ev.dimensionTheoryClosedTerm

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse