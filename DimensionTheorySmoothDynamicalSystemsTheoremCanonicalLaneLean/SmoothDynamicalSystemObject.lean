import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheorem

structure SmoothDynamicalSystem where
  phaseSpace : Type u
  topology : TopologicalSpace phaseSpace
  timeDomain : Type v
  addMonoid : AddMonoid timeDomain
  flow : timeDomain → phaseSpace → phaseSpace
  continuousFlow : Prop

structure DimensionAdmittedObject where
  system : SmoothDynamicalSystem
  smoothStructure : Prop
  compactAttractor : Prop
  hausdorffDimension : ℕ
  dimensionFormula : Prop
  conclusion : dimensionFormula

def DimensionWitnessClosed (O : DimensionAdmittedObject) : Prop :=
  O.dimensionFormula

end DimensionTheorySmoothDynamicalSystemsTheorem
end HautevilleHouse