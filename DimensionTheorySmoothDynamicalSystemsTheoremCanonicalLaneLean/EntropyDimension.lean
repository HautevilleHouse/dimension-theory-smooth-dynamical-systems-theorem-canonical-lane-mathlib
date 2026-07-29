import canonicalLaneMathlib.AdmissibleClass

/-!
# Entropy Dimension Package

This package records the entropy-theoretic dimension concepts (Hausdorff, box,
correlation, information dimension) and their relations in the context of smooth
dynamical systems. The bridge/gate closure reflects the admissible-class
embedding of entropy-dimension results.
-/

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystems

structure EntropyDimensionPackage where
  entropyDefined : Prop
  hausdorffDimensionBound : Prop
  boxDimensionBound : Prop
  correlationDimensionBound : Prop
  informationDimensionBound : Prop
  measurePreservingDynamics : Prop
  dimensionRelations : Prop

def EntropyDimensionClosed (E : EntropyDimensionPackage) : Prop :=
  E.entropyDefined ∧ E.hausdorffDimensionBound ∧ E.boxDimensionBound ∧
  E.correlationDimensionBound ∧ E.informationDimensionBound ∧
  E.measurePreservingDynamics ∧ E.dimensionRelations

structure EntropyDimensionEvidence (E : EntropyDimensionPackage) where
  entropyDefinedClosed : E.entropyDefined
  hausdorffDimensionBoundClosed : E.hausdorffDimensionBound
  boxDimensionBoundClosed : E.boxDimensionBound
  correlationDimensionBoundClosed : E.correlationDimensionBound
  informationDimensionBoundClosed : E.informationDimensionBound
  measurePreservingDynamicsClosed : E.measurePreservingDynamics
  dimensionRelationsClosed : E.dimensionRelations

theorem entropy_dimension_closed_from_evidence
    (E : EntropyDimensionPackage) (Ev : EntropyDimensionEvidence E) :
    EntropyDimensionClosed E := by
  exact And.intro Ev.entropyDefinedClosed
    (And.intro Ev.hausdorffDimensionBoundClosed
      (And.intro Ev.boxDimensionBoundClosed
        (And.intro Ev.correlationDimensionBoundClosed
          (And.intro Ev.informationDimensionBoundClosed
            (And.intro Ev.measurePreservingDynamicsClosed
              Ev.dimensionRelationsClosed)))))

end DimensionTheorySmoothDynamicalSystems
end HautevilleHouse
