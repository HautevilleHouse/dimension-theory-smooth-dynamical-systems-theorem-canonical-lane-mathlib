import dimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure DynamicalSystemPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  dimension : Nat
  diffeomorphismGroup : Type v
  smoothFlow : Prop
  flowMap : manifold → manifold
  invariantMeasures : Type w
  topologicalEntropy : Prop
  lyapunovExponents : Prop
  hyperbolicity : Prop
  ergodicProperties : Prop
  dimensionTheoryData : Prop

dynamicalSystemPackage : DynamicalSystemPackage := {
  topologicalEntropy := True
  lyapunovExponents := True
  hyperbolicity := True
  ergodicProperties := True
  dimensionTheoryData := True
}

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
