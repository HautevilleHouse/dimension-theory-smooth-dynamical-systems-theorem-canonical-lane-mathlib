import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheorem

structure YoungDimensionInequalityPackage where
  lyapunovExponents : Prop
  hausdorffDimension : Prop
  boxCountingDimension : Prop
  youngInequality : Prop

structure YoungDimensionInequalityEvidence (Y : YoungDimensionInequalityPackage) where
  lyapunovExponentsClosed : Y.lyapunovExponents
  hausdorffDimensionClosed : Y.hausdorffDimension
  boxCountingDimensionClosed : Y.boxCountingDimension
  youngInequalityClosed : Y.youngInequality

def YoungDimensionInequalityClosed (Y : YoungDimensionInequalityPackage) : Prop :=
  Y.lyapunovExponents ∧ Y.hausdorffDimension ∧ Y.boxCountingDimension ∧ Y.youngInequality

theorem young_dimension_inequality_closed_from_evidence (Y : YoungDimensionInequalityPackage)
    (E : YoungDimensionInequalityEvidence Y) : YoungDimensionInequalityClosed Y := by
  exact And.intro E.lyapunovExponentsClosed
    (And.intro E.hausdorffDimensionClosed
      (And.intro E.boxCountingDimensionClosed E.youngInequalityClosed))

end DimensionTheorySmoothDynamicalSystemsTheorem
end HautevilleHouse