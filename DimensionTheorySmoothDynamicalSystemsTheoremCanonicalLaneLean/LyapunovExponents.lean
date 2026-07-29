import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure LyapunovExponentsPackage where
  oseledetsMultiplicativeErgodic : Prop
  lyapunovSpectrum : Type u
  exponentialGrowthRates : Prop
  regularityCondition : Prop

structure LyapunovExponentsEvidence (L : LyapunovExponentsPackage) where
  oseledetsMultiplicativeErgodicClosed : L.oseledetsMultiplicativeErgodic
  exponentialGrowthRatesClosed : L.exponentialGrowthRates
  regularityConditionClosed : L.regularityCondition

def LyapunovExponentsClosed (L : LyapunovExponentsPackage) : Prop :=
  L.oseledetsMultiplicativeErgodic ∧ L.exponentialGrowthRates ∧ L.regularityCondition

theorem lyapunov_exponents_closed_from_evidence
    (L : LyapunovExponentsPackage) (E : LyapunovExponentsEvidence L) :
    LyapunovExponentsClosed L := by
  exact And.intro E.oseledetsMultiplicativeErgodicClosed
    (And.intro E.exponentialGrowthRatesClosed E.regularityConditionClosed)

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse