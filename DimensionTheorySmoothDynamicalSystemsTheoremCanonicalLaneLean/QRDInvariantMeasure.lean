import DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.SmoothDynamicalSystem

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure QRDInvariantMeasure (S : SmoothDynamicalSystem M) where
  measure : Measure M
  quasiRegular : QuasiRegular measure S.flow
  dimInvariant : DimensionInvariant measure S.flow
  invariantClosed : Prop
  invariantClosedTerm : invariantClosed

structure QRDInvariantMeasureEvidence (Q : QRDInvariantMeasure S) where
  quasiRegularClosed : Q.quasiRegular
  dimInvariantClosed : Q.dimInvariant
  invariantClosedTerm : Q.invariantClosed

def QRDInvariantMeasureClosed (Q : QRDInvariantMeasure S) : Prop :=
  Q.quasiRegular ∧ Q.dimInvariant ∧ Q.invariantClosed

theorem qrd_invariant_measure_closed_from_evidence (Q : QRDInvariantMeasure S) (E : QRDInvariantMeasureEvidence Q) : QRDInvariantMeasureClosed Q := by
  exact And.intro E.quasiRegularClosed (And.intro E.dimInvariantClosed E.invariantClosedTerm)

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse