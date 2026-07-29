import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure GrowthRateClassificationPackage where
  solutionFamily : Type u
  growthRate : Type v
  sublinearGrowth : Prop
  linearGrowth : Prop
  superlinearGrowth : Prop
  classificationComplete : Prop
  rateDetermined : Prop
  rateForcesBoundedness : Prop

structure GrowthRateClassificationEvidence (P : GrowthRateClassificationPackage) where
  sublinearGrowthClosed : P.sublinearGrowth
  linearGrowthClosed : P.linearGrowth
  superlinearGrowthClosed : P.superlinearGrowth
  classificationCompleteClosed : P.classificationComplete
  rateDeterminedClosed : P.rateDetermined
  rateForcesBoundednessClosed : P.rateForcesBoundedness

def GrowthRateClassificationClosed (P : GrowthRateClassificationPackage) : Prop :=
  P.sublinearGrowth ∧ P.linearGrowth ∧ P.superlinearGrowth ∧ P.classificationComplete ∧
  P.rateDetermined ∧ P.rateForcesBoundedness

theorem growth_rate_classification_closed_from_evidence (P : GrowthRateClassificationPackage) (E : GrowthRateClassificationEvidence P) :
    GrowthRateClassificationClosed P := by
  exact And.intro E.sublinearGrowthClosed
    (And.intro E.linearGrowthClosed
      (And.intro E.superlinearGrowthClosed
        (And.intro E.classificationCompleteClosed
          (And.intro E.rateDeterminedClosed E.rateForcesBoundednessClosed))))

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse