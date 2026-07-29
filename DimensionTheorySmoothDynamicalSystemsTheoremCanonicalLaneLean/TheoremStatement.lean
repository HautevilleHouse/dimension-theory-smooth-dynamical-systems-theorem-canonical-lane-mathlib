import HautevilleHouse.DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "dimension-theory-smooth-dynamical-systems-theorem-canonical-lane",
  theoremObject := "Dimension Theory Smooth Dynamical Systems Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedDimensionTheoryClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_dimension_theory_endgame A

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse