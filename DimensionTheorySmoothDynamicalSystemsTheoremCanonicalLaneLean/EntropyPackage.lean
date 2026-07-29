import HautevilleHouse.DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.LyapunovExponents

/-!
# Entropy Package: Measure-theoretic and topological entropy.
-/

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure EntropyPackage {L : LyapunovExponentsPackage} where
  measureTheoreticEntropy : Prop
  topologicalEntropy : Prop
  variationalPrinciple : Prop
  entropyWithRespectToInvariantMeasure : Prop

structure EntropyEvidence {L : LyapunovExponentsPackage} (E : EntropyPackage L) where
  measureTheoreticEntropyClosed : E.measureTheoreticEntropy
  topologicalEntropyClosed : E.topologicalEntropy
  variationalPrincipleClosed : E.variationalPrinciple
  entropyWithRespectToInvariantMeasureClosed : E.entropyWithRespectToInvariantMeasure

def EntropyClosed {L : LyapunovExponentsPackage} (E : EntropyPackage L) : Prop :=
  E.measureTheoreticEntropy ∧ E.topologicalEntropy ∧ E.variationalPrinciple ∧ E.entropyWithRespectToInvariantMeasure

theorem entropy_closed_from_evidence {L : LyapunovExponentsPackage} (E : EntropyPackage L) (Ev : EntropyEvidence E) : EntropyClosed E :=
  And.intro Ev.measureTheoreticEntropyClosed (And.intro Ev.topologicalEntropyClosed (And.intro Ev.variationalPrincipleClosed Ev.entropyWithRespectToInvariantMeasureClosed))

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse