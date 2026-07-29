import canonicalLaneMathlib.AdmissibleClass

/-!
# Hyperbolic Set Package: Definition and properties of hyperbolic sets for smooth dynamical systems.
-/

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean

structure HyperbolicSetPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  diffeomorphism : Prop
  splitting : Prop
  contractionExpansion : Prop

structure HyperbolicSetEvidence (H : HyperbolicSetPackage) where
  diffeomorphismClosed : H.diffeomorphism
  splittingClosed : H.splitting
  contractionExpansionClosed : H.contractionExpansion

def HyperbolicSetClosed (H : HyperbolicSetPackage) : Prop :=
  H.diffeomorphism ∧ H.splitting ∧ H.contractionExpansion

theorem hyperbolic_set_closed_from_evidence (H : HyperbolicSetPackage) (E : HyperbolicSetEvidence H) :
    HyperbolicSetClosed H :=
  And.intro E.diffeomorphismClosed (And.intro E.splittingClosed E.contractionExpansionClosed)

end DimensionTheorySmoothDynamicalSystemsTheoremCanonicalLaneLean
end HautevilleHouse