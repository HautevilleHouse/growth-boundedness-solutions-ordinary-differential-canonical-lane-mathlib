import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure ContinuousDependencePackage where
  parameterSpace : Type u
  solutionFamily : Prop
  continuousParameterDependence : Prop
  uniformContinuity : Prop

structure ContinuousDependenceEvidence (P : ContinuousDependencePackage) where
  solutionFamilyClosed : P.solutionFamily
  continuousParameterDependenceClosed : P.continuousParameterDependence
  uniformContinuityClosed : P.uniformContinuity

def ContinuousDependenceClosed (P : ContinuousDependencePackage) : Prop :=
  P.solutionFamily ∧ P.continuousParameterDependence ∧ P.uniformContinuity

theorem continuous_dependence_closed_from_evidence (P : ContinuousDependencePackage) (E : ContinuousDependenceEvidence P) : ContinuousDependenceClosed P := by
  exact And.intro E.solutionFamilyClosed (And.intro E.continuousParameterDependenceClosed E.uniformContinuityClosed)

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
