import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure GlobalBoundednessCriteriaPackage where
  solutionSpace : Type u
  criteriaSet : Type v
  growthControlFunction : Prop
  boundednessCriteria : Prop
  criteriaSufficient : Prop
  criteriaNecessary : Prop
  globalBoundEstablished : Prop

structure GlobalBoundednessCriteriaEvidence (P : GlobalBoundednessCriteriaPackage) where
  growthControlFunctionClosed : P.growthControlFunction
  boundednessCriteriaClosed : P.boundednessCriteria
  criteriaSufficientClosed : P.criteriaSufficient
  criteriaNecessaryClosed : P.criteriaNecessary
  globalBoundEstablishedClosed : P.globalBoundEstablished

def GlobalBoundednessCriteriaClosed (P : GlobalBoundednessCriteriaPackage) : Prop :=
  P.growthControlFunction ∧ P.boundednessCriteria ∧ P.criteriaSufficient ∧ P.criteriaNecessary ∧ P.globalBoundEstablished

theorem global_boundedness_criteria_closed_from_evidence (P : GlobalBoundednessCriteriaPackage) (E : GlobalBoundednessCriteriaEvidence P) :
    GlobalBoundednessCriteriaClosed P := by
  exact And.intro E.growthControlFunctionClosed
    (And.intro E.boundednessCriteriaClosed
      (And.intro E.criteriaSufficientClosed
        (And.intro E.criteriaNecessaryClosed E.globalBoundEstablishedClosed)))

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse