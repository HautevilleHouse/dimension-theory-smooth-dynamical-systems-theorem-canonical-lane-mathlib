import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure EntropyDimensionInequalityPackage where
  topologicalEntropy : Type u
  measureTheoreticEntropy : Type v
  hausdorffDimension : Type w
  entropyUpperBound : Prop
  dimensionLowerBound : Prop
  inequalityHolds : Prop

structure EntropyDimensionInequalityEvidence (E : EntropyDimensionInequalityPackage) where
  entropyUpperBoundClosed : E.entropyUpperBound
  dimensionLowerBoundClosed : E.dimensionLowerBound
  inequalityHoldsClosed : E.inequalityHolds

def EntropyDimensionInequalityClosed (E : EntropyDimensionInequalityPackage) : Prop :=
  E.entropyUpperBound ∧ E.dimensionLowerBound ∧ E.inequalityHolds

theorem entropy_dimension_inequality_closed_from_evidence
    (E : EntropyDimensionInequalityPackage) (Ev : EntropyDimensionInequalityEvidence E) :
    EntropyDimensionInequalityClosed E := by
  exact And.intro Ev.entropyUpperBoundClosed
    (And.intro Ev.dimensionLowerBoundClosed Ev.inequalityHoldsClosed)

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse