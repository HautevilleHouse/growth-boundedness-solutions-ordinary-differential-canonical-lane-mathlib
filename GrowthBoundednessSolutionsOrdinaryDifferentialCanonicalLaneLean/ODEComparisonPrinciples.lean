import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure ODEComparisonPrinciplesPackage where
  comparisonFunctions : Type u
  differentialInequalities : Prop
  comparisonResult : Prop
  growthBoundaryTransfer : Prop
  boundednessPreservation : Prop
  comparisonClosed : Prop

structure ODEComparisonPrinciplesEvidence (P : ODEComparisonPrinciplesPackage) where
  differentialInequalitiesClosed : P.differentialInequalities
  comparisonResultClosed : P.comparisonResult
  growthBoundaryTransferClosed : P.growthBoundaryTransfer
  boundednessPreservationClosed : P.boundednessPreservation
  comparisonClosedClosed : P.comparisonClosed

def ODEComparisonPrinciplesClosed (P : ODEComparisonPrinciplesPackage) : Prop :=
  P.differentialInequalities ∧ P.comparisonResult ∧ P.growthBoundaryTransfer ∧ P.boundednessPreservation ∧ P.comparisonClosed

theorem ode_comparison_principles_closed_from_evidence (P : ODEComparisonPrinciplesPackage) (E : ODEComparisonPrinciplesEvidence P) :
    ODEComparisonPrinciplesClosed P := by
  exact And.intro E.differentialInequalitiesClosed
    (And.intro E.comparisonResultClosed
      (And.intro E.growthBoundaryTransferClosed
        (And.intro E.boundednessPreservationClosed E.comparisonClosedClosed)))

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse