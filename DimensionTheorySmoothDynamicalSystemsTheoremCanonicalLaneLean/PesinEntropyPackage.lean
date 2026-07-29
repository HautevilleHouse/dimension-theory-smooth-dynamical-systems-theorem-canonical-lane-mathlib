import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheorem

structure PesinEntropyPackage where
  lyapunovExponents : Prop
  measureEntropy : Prop
  pesinFormula : Prop
  entropyUpperBound : Prop

structure PesinEntropyEvidence (P : PesinEntropyPackage) where
  lyapunovExponentsClosed : P.lyapunovExponents
  measureEntropyClosed : P.measureEntropy
  pesinFormulaClosed : P.pesinFormula
  entropyUpperBoundClosed : P.entropyUpperBound

def PesinEntropyClosed (P : PesinEntropyPackage) : Prop :=
  P.lyapunovExponents ∧ P.measureEntropy ∧ P.pesinFormula ∧ P.entropyUpperBound

theorem pesin_entropy_closed_from_evidence (P : PesinEntropyPackage)
    (E : PesinEntropyEvidence P) : PesinEntropyClosed P := by
  exact And.intro E.lyapunovExponentsClosed
    (And.intro E.measureEntropyClosed
      (And.intro E.pesinFormulaClosed E.entropyUpperBoundClosed))

end DimensionTheorySmoothDynamicalSystemsTheorem
end HautevilleHouse