import dimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionTheorySmoothDynamicalSystems

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure EntropyPackage {D : DynamicalSystemPackage} where
  topologicalEntropyDefined : Prop
  topologicalEntropyValue : ℝ
  metricEntropyDefined : Prop
  metricEntropyValue : ℝ
  entropyInequality : topologicalEntropyValue ≥ 0 ∧ metricEntropyValue ≥ 0

structure EntropyEvidence {D : DynamicalSystemPackage} (E : EntropyPackage D) where
  topologicalEntropyDefinedClosed : E.topologicalEntropyDefined
  topologicalEntropyValueClosed : E.topologicalEntropyValue = E.topologicalEntropyValue
  metricEntropyDefinedClosed : E.metricEntropyDefined
  metricEntropyValueClosed : E.metricEntropyValue = E.metricEntropyValue
  entropyInequalityClosed : E.entropyInequality

def EntropyClosed {D : DynamicalSystemPackage} (E : EntropyPackage D) : Prop :=
  E.topologicalEntropyDefined ∧ E.metricEntropyDefined ∧ E.entropyInequality

theorem entropy_closed_from_evidence {D : DynamicalSystemPackage} (E : EntropyPackage D) (Ev : EntropyEvidence E) : EntropyClosed E :=
  And.intro Ev.topologicalEntropyDefinedClosed (And.intro Ev.metricEntropyDefinedClosed Ev.entropyInequalityClosed)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
