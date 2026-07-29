import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure PesinTheoryPackage where
  nonuniformHyperbolicity : Prop
  stableUnstableManifolds : Prop
  lyapunovExponentsExist : Prop
  dimensionFormula : Prop

structure PesinTheoryEvidence (P : PesinTheoryPackage) where
  nonuniformHyperbolicityClosed : P.nonuniformHyperbolicity
  stableUnstableManifoldsClosed : P.stableUnstableManifolds
  lyapunovExponentsExistClosed : P.lyapunovExponentsExist
  dimensionFormulaClosed : P.dimensionFormula

def PesinTheoryClosed (P : PesinTheoryPackage) : Prop :=
  P.nonuniformHyperbolicity ∧ P.stableUnstableManifolds ∧ P.lyapunovExponentsExist ∧ P.dimensionFormula

theorem pesin_theory_closed_from_evidence
    (P : PesinTheoryPackage) (E : PesinTheoryEvidence P) :
    PesinTheoryClosed P := by
  exact And.intro E.nonuniformHyperbolicityClosed
    (And.intro E.stableUnstableManifoldsClosed
      (And.intro E.lyapunovExponentsExistClosed E.dimensionFormulaClosed))

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse