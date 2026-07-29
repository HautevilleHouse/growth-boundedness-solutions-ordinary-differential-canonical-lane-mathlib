import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure GrowthBoundsODEPackage where
  growthRate : Prop
  solutionBounds : Prop
  uniformEstimates : Prop
  dependencyOnInitial : Prop

structure GrowthBoundsODEEvidence (P : GrowthBoundsODEPackage) where
  growthRateClosed : P.growthRate
  solutionBoundsClosed : P.solutionBounds
  uniformEstimatesClosed : P.uniformEstimates
  dependencyOnInitialClosed : P.dependencyOnInitial

def GrowthBoundsODEClosed (P : GrowthBoundsODEPackage) : Prop :=
  P.growthRate ∧ P.solutionBounds ∧ P.uniformEstimates ∧ P.dependencyOnInitial

theorem growth_bounds_ode_closed_from_evidence (P : GrowthBoundsODEPackage) (E : GrowthBoundsODEEvidence P) : GrowthBoundsODEClosed P := by
  exact And.intro E.growthRateClosed (And.intro E.solutionBoundsClosed (And.intro E.uniformEstimatesClosed E.dependencyOnInitialClosed))

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
