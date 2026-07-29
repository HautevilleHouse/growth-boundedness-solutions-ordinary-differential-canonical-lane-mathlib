import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure AdmissibleClass where
  object : GrowthBoundednessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GrowthBoundednessWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse