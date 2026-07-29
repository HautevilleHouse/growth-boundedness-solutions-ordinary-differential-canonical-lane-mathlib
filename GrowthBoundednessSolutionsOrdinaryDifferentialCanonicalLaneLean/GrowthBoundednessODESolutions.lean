import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure GrowthBoundednessODEPackage where
  solutionExistence : Prop
  uniformBound : Prop
  derivativeEstimate : Prop
  maximalInterval : Prop
  continuityAtBoundary : Prop

structure GrowthBoundednessODEEvidence (G : GrowthBoundednessODEPackage) where
  solutionExistenceClosed : G.solutionExistence
  uniformBoundClosed : G.uniformBound
  derivativeEstimateClosed : G.derivativeEstimate
  maximalIntervalClosed : G.maximalInterval
  continuityAtBoundaryClosed : G.continuityAtBoundary

def GrowthBoundednessODEClosed (G : GrowthBoundednessODEPackage) : Prop :=
  G.solutionExistence ∧ G.uniformBound ∧ G.derivativeEstimate ∧ G.maximalInterval ∧ G.continuityAtBoundary

theorem growth_boundedness_ode_closed_from_evidence
    (G : GrowthBoundednessODEPackage) (E : GrowthBoundednessODEEvidence G) :
    GrowthBoundednessODEClosed G := by
  exact And.intro E.solutionExistenceClosed
    (And.intro E.uniformBoundClosed
      (And.intro E.derivativeEstimateClosed
        (And.intro E.maximalIntervalClosed E.continuityAtBoundaryClosed)))

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse