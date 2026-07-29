import growthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass

/-!
# Growth Boundedness ODE Packages
-/

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure ODESolutionPackage where
  timeDomain : Type u
  stateSpace : Type v
  vectorField : stateSpace → stateSpace
  initialCondition : stateSpace
  solution : timeDomain → stateSpace
  existenceInterval : Prop
  uniqueness : Prop
  smoothness : Prop

structure GrowthBoundednessCondition where
  growthRate : ℝ
  bound : ℝ
  solutionBounded : Prop
  growthRatePositive : growthRate > 0
  boundFinite : bound < ∞

structure LyapunovExponentPackage where
  solution : ODESolutionPackage
  lyapunovExponent : ℝ
  exponentialBound : Prop
  limitExists : Prop

structure PerturbationPackage where
  baseSolution : ODESolutionPackage
  perturbation : stateSpace → stateSpace
  perturbedSolution : timeDomain → stateSpace
  stability : Prop
  boundUnderPerturbation : Prop

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse