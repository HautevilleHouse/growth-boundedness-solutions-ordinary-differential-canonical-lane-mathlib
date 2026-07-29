import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure GronwallPackage where
  differentialInequality : Prop
  exponentialBound : Prop
  comparisonPrinciple : Prop
  integralForm : Prop

structure GronwallEvidence (P : GronwallPackage) where
  differentialInequalityClosed : P.differentialInequality
  exponentialBoundClosed : P.exponentialBound
  comparisonPrincipleClosed : P.comparisonPrinciple
  integralFormClosed : P.integralForm

def GronwallClosed (P : GronwallPackage) : Prop :=
  P.differentialInequality ∧ P.exponentialBound ∧ P.comparisonPrinciple ∧ P.integralForm

theorem gronwall_closed_from_evidence (P : GronwallPackage) (E : GronwallEvidence P) : GronwallClosed P := by
  exact And.intro E.differentialInequalityClosed (And.intro E.exponentialBoundClosed (And.intro E.comparisonPrincipleClosed E.integralFormClosed))

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
