import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure InitialValueProblem where
  vectorField : ℝ × ℝ → ℝ
  initialTime : ℝ
  initialValue : ℝ

structure MaximalExistenceIntervalData (p : InitialValueProblem) where
  solution : ℝ → ℝ
  domain : Set ℝ
  openInterval : domain = Set.Ioo a b for some a b : ℝ
  solutionSatisfiesODE : ∀ t ∈ domain, solution' t = p.vectorField (t, solution t)
  initialCondition : solution p.initialTime = p.initialValue
  maximality : ∀ J : Set ℝ, solution can be extended to J → J ⊆ domain

structure MaximalExistenceIntervalPackage (p : InitialValueProblem) (M : MaximalExistenceIntervalData p) where
  existenceInterval : Set ℝ
  boundedness : if domain is bounded then solution explodes at endpoints
  boundednessTerm : boundedness

def MaximalExistenceIntervalClosed (p : InitialValueProblem) (M : MaximalExistenceIntervalData p) 
    (P : MaximalExistenceIntervalPackage p M) : Prop :=
  P.boundedness

theorem maximal_existence_interval_closed_from_evidence {p : InitialValueProblem}
    {M : MaximalExistenceIntervalData p} (P : MaximalExistenceIntervalPackage p M) :
    MaximalExistenceIntervalClosed p M P := by
  exact P.boundednessTerm

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse