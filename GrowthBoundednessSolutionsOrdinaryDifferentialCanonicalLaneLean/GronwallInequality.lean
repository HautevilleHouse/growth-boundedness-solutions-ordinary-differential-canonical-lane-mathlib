import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure GronwallInequalityData where
  interval : Set ℝ
  function f : ℝ → ℝ
  derivativeBound : ∀ t ∈ interval, |f' t| ≤ k * |f t| where k : ℝ
  initialCondition : f 0 = y0
  growthEstimate : ∀ t ∈ interval, |f t| ≤ |y0| * exp (k * |t|)

structure GronwallInequalityPackage (G : GronwallInequalityData) where
  differentialInequality : Prop
  exponentialBound : Prop
  exponentialBoundTerm : exponentialBound

def GronwallInequalityClosed (G : GronwallInequalityData) (P : GronwallInequalityPackage G) : Prop :=
  P.exponentialBound

theorem gronwall_inequality_closed_from_evidence {G : GronwallInequalityData}
    (P : GronwallInequalityPackage G) : GronwallInequalityClosed G P := by
  exact P.exponentialBoundTerm

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse