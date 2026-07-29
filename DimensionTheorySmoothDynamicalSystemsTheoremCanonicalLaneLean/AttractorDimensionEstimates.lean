import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure AttractorDimensionEstimatesPackage where
  attractorSet : Type u
  boxCountingDimension : Type v
  hausdorffDimension : Type w
  lyapunovDimension : Type x
  boxCountingDefined : Prop
  hausdorffDefined : Prop
  lyapunovDefined : Prop
  dimensionRelations : Prop

structure AttractorDimensionEstimatesEvidence (A : AttractorDimensionEstimatesPackage) where
  boxCountingDefinedClosed : A.boxCountingDefined
  hausdorffDefinedClosed : A.hausdorffDefined
  lyapunovDefinedClosed : A.lyapunovDefined
  dimensionRelationsClosed : A.dimensionRelations

def AttractorDimensionEstimatesClosed (A : AttractorDimensionEstimatesPackage) : Prop :=
  A.boxCountingDefined ∧ A.hausdorffDefined ∧ A.lyapunovDefined ∧ A.dimensionRelations

theorem attractor_dimension_estimates_closed_from_evidence
    (A : AttractorDimensionEstimatesPackage) (E : AttractorDimensionEstimatesEvidence A) :
    AttractorDimensionEstimatesClosed A := by
  exact And.intro E.boxCountingDefinedClosed
    (And.intro E.hausdorffDefinedClosed
      (And.intro E.lyapunovDefinedClosed E.dimensionRelationsClosed))

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse