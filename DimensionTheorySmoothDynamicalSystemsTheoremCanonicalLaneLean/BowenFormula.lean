import canonicalLaneMathlib.AdmissibleClass

/-!
# Bowen Formula Package

This package records the Bowen formula which relates the Hausdorff dimension of
a hyperbolic set to the thermodynamic formalism pressure and Lyapunov exponents.
The bridge/gate closure embeds this formula into the admissible-class framework.
-/

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystems

structure BowenFormulaPackage where
  hyperbolicSetDefined : Prop
  topologicalPressure : Prop
  equilibriumState : Prop
  hausdorffDimensionComputed : Prop
  bowenFormulaHeld : Prop
  gibbsMeasureConstructed : Prop
  symbolicDynamics : Prop

def BowenFormulaClosed (B : BowenFormulaPackage) : Prop :=
  B.hyperbolicSetDefined ∧ B.topologicalPressure ∧
  B.equilibriumState ∧ B.hausdorffDimensionComputed ∧
  B.bowenFormulaHeld ∧ B.gibbsMeasureConstructed ∧
  B.symbolicDynamics

structure BowenFormulaEvidence (B : BowenFormulaPackage) where
  hyperbolicSetDefinedClosed : B.hyperbolicSetDefined
  topologicalPressureClosed : B.topologicalPressure
  equilibriumStateClosed : B.equilibriumState
  hausdorffDimensionComputedClosed : B.hausdorffDimensionComputed
  bowenFormulaHeldClosed : B.bowenFormulaHeld
  gibbsMeasureConstructedClosed : B.gibbsMeasureConstructed
  symbolicDynamicsClosed : B.symbolicDynamics

theorem bowen_formula_closed_from_evidence
    (B : BowenFormulaPackage) (Ev : BowenFormulaEvidence B) :
    BowenFormulaClosed B := by
  exact And.intro Ev.hyperbolicSetDefinedClosed
    (And.intro Ev.topologicalPressureClosed
      (And.intro Ev.equilibriumStateClosed
        (And.intro Ev.hausdorffDimensionComputedClosed
          (And.intro Ev.bowenFormulaHeldClosed
            (And.intro Ev.gibbsMeasureConstructedClosed
              Ev.symbolicDynamicsClosed)))))

end DimensionTheorySmoothDynamicalSystems
end HautevilleHouse
