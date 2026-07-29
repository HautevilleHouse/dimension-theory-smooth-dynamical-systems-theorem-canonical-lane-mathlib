import HautevilleHouse.DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse