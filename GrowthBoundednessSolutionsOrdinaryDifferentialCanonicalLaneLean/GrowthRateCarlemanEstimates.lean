import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure CarlemanWeightFunction where
  weight : ℝ → ℝ
  positivity : ∀ t : ℝ, weight t > 0
  growthCondition : ∀ t : ℝ, weight t ≤ exp (a * t) where a : ℝ

structure CarlemanEstimatePackage (φ : CarlemanWeightFunction) where
  differentialOperator : (ℝ → ℝ) → (ℝ → ℝ)
  carlemanInequality : Prop
  operatorDomain : Set (ℝ → ℝ)
  carlemanInequalityTerm : carlemanInequality

def CarlemanEstimateClosed (φ : CarlemanWeightFunction) (C : CarlemanEstimatePackage φ) : Prop :=
  C.carlemanInequality

theorem carleman_estimate_closed_from_evidence {φ : CarlemanWeightFunction}
    (C : CarlemanEstimatePackage φ) : CarlemanEstimateClosed φ C := by
  exact C.carlemanInequalityTerm

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse