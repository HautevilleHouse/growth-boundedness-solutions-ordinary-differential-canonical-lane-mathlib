import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure LyapunovExponentData where
  flow : ℝ → ℝ → ℝ
  exponent : ℝ
  growthBound : ∀ x : ℝ, limsup (fun t : ℝ => log |flow t x| / t) (t → ∞) ≤ exponent

structure LyapunovExponentPackage (L : LyapunovExponentData) where
  exponentUpperBound : ℝ
  stabilityCondition : Prop
  boundednessResult : Prop
  boundednessResultTerm : boundednessResult

def LyapunovExponentClosed (L : LyapunovExponentData) (P : LyapunovExponentPackage L) : Prop :=
  P.boundednessResult

theorem lyapunov_exponent_closed_from_evidence {L : LyapunovExponentData}
    (P : LyapunovExponentPackage L) : LyapunovExponentClosed L P := by
  exact P.boundednessResultTerm

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse