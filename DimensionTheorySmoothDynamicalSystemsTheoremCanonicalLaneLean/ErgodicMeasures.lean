import dimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionTheorySmoothDynamicalSystems

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure ErgodicPackage {D : DynamicalSystemPackage} where
  ergodicInvariantMeasures : Prop
  ergodicDecomposition : Prop
  measureTheoreticEntropy : Prop
  mixingProperties : Prop

tructure ErgodicEvidence {D : DynamicalSystemPackage} (E : ErgodicPackage D) where
  ergodicInvariantMeasuresClosed : E.ergodicInvariantMeasures
  ergodicDecompositionClosed : E.ergodicDecomposition
  measureTheoreticEntropyClosed : E.measureTheoreticEntropy
  mixingPropertiesClosed : E.mixingProperties

def ErgodicClosed {D : DynamicalSystemPackage} (E : ErgodicPackage D) : Prop :=
  E.ergodicInvariantMeasures ∧ E.ergodicDecomposition ∧ E.measureTheoreticEntropy ∧ E.mixingProperties

theorem ergodic_closed_from_evidence {D : DynamicalSystemPackage} (E : ErgodicPackage D) (Ev : ErgodicEvidence E) : ErgodicClosed E :=
  And.intro Ev.ergodicInvariantMeasuresClosed (And.intro Ev.ergodicDecompositionClosed (And.intro Ev.measureTheoreticEntropyClosed Ev.mixingPropertiesClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
