import canonicalLaneMathlib.AdmissibleClass

/-!
# Lyapunov Spectrum Package

This package captures the Lyapunov exponent spectrum and its relation to
dimension theory for smooth dynamical systems. The package fields record the
Oseledets multiplicative ergodic theorem, Lyapunov exponents, and the
relationship between Lyapunov dimension and entropy.
-/

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystems

structure LyapunovSpectrumPackage where
  lyapunovExponentsDefined : Prop
  oseledetsTheoremApplied : Prop
  lyapunovDimension : Prop
  dimensionEntropyRelation : Prop
  nonuniformHyperbolicity : Prop
  stableManifoldTheorem : Prop
  partialHyperbolicity : Prop

def LyapunovSpectrumClosed (L : LyapunovSpectrumPackage) : Prop :=
  L.lyapunovExponentsDefined ∧ L.oseledetsTheoremApplied ∧
  L.lyapunovDimension ∧ L.dimensionEntropyRelation ∧
  L.nonuniformHyperbolicity ∧ L.stableManifoldTheorem ∧
  L.partialHyperbolicity

structure LyapunovSpectrumEvidence (L : LyapunovSpectrumPackage) where
  lyapunovExponentsDefinedClosed : L.lyapunovExponentsDefined
  oseledetsTheoremAppliedClosed : L.oseledetsTheoremApplied
  lyapunovDimensionClosed : L.lyapunovDimension
  dimensionEntropyRelationClosed : L.dimensionEntropyRelation
  nonuniformHyperbolicityClosed : L.nonuniformHyperbolicity
  stableManifoldTheoremClosed : L.stableManifoldTheorem
  partialHyperbolicityClosed : L.partialHyperbolicity

theorem lyapunov_spectrum_closed_from_evidence
    (L : LyapunovSpectrumPackage) (Ev : LyapunovSpectrumEvidence L) :
    LyapunovSpectrumClosed L := by
  exact And.intro Ev.lyapunovExponentsDefinedClosed
    (And.intro Ev.oseledetsTheoremAppliedClosed
      (And.intro Ev.lyapunovDimensionClosed
        (And.intro Ev.dimensionEntropyRelationClosed
          (And.intro Ev.nonuniformHyperbolicityClosed
            (And.intro Ev.stableManifoldTheoremClosed
              Ev.partialHyperbolicityClosed)))))

end DimensionTheorySmoothDynamicalSystems
end HautevilleHouse
