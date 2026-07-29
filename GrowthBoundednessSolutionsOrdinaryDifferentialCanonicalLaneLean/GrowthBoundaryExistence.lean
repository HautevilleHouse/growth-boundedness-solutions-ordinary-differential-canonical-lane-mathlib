import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure GrowthBoundaryExistencePackage where
  initialCondition : Type u
  timeDomain : Type v
  differentialEquation : Prop
  growthCondition : Prop
  boundednessCondition : Prop
  solutionExists : Prop
  maximalInterval : Prop
  growthControlled : Prop

structure GrowthBoundaryExistenceEvidence (P : GrowthBoundaryExistencePackage) where
  initialConditionClosed : P.initialCondition
  differentialEquationClosed : P.differentialEquation
  growthConditionClosed : P.growthCondition
  boundednessConditionClosed : P.boundednessCondition
  solutionExistsClosed : P.solutionExists
  maximalIntervalClosed : P.maximalInterval
  growthControlledClosed : P.growthControlled

def GrowthBoundaryExistenceClosed (P : GrowthBoundaryExistencePackage) : Prop :=
  P.initialCondition ∧ P.differentialEquation ∧ P.growthCondition ∧ P.boundednessCondition ∧
  P.solutionExists ∧ P.maximalInterval ∧ P.growthControlled

theorem growth_boundary_existence_closed_from_evidence (P : GrowthBoundaryExistencePackage) (E : GrowthBoundaryExistenceEvidence P) :
    GrowthBoundaryExistenceClosed P := by
  exact And.intro E.initialConditionClosed
    (And.intro E.differentialEquationClosed
      (And.intro E.growthConditionClosed
        (And.intro E.boundednessConditionClosed
          (And.intro E.solutionExistsClosed
            (And.intro E.maximalIntervalClosed E.growthControlledClosed)))))

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse