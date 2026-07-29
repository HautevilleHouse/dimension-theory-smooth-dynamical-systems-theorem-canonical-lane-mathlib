import dimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionTheorySmoothDynamicalSystems

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure HyperbolicityPackage {D : DynamicalSystemPackage} where
  uniformHyperbolicity : Prop
  nonuniformHyperbolicity : Prop
  dominatedSplitting : Prop
  lyapunovExponentsDefined : Prop
  hyperbolicityRank : ℕ

tructure HyperbolicityEvidence {D : DynamicalSystemPackage} (H : HyperbolicityPackage D) where
  uniformHyperbolicityClosed : H.uniformHyperbolicity
  nonuniformHyperbolicityClosed : H.nonuniformHyperbolicity
  dominatedSplittingClosed : H.dominatedSplitting
  lyapunovExponentsDefinedClosed : H.lyapunovExponentsDefined
  hyperbolicityRankClosed : H.hyperbolicityRank = H.hyperbolicityRank

def HyperbolicityClosed {D : DynamicalSystemPackage} (H : HyperbolicityPackage D) : Prop :=
  H.uniformHyperbolicity ∧ H.nonuniformHyperbolicity ∧ H.dominatedSplitting ∧ H.lyapunovExponentsDefined

theorem hyperbolicity_closed_from_evidence {D : DynamicalSystemPackage} (H : HyperbolicityPackage D) (Ev : HyperbolicityEvidence H) : HyperbolicityClosed H :=
  And.intro Ev.uniformHyperbolicityClosed (And.intro Ev.nonuniformHyperbolicityClosed (And.intro Ev.dominatedSplittingClosed Ev.lyapunovExponentsDefinedClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
