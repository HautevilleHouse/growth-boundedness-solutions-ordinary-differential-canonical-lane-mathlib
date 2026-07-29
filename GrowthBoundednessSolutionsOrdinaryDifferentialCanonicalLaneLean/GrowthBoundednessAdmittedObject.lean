import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure GrowthBoundednessSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GrowthBoundednessAdmittedObject where
  space : GrowthBoundednessSpace
  solutionExists : Prop
  growthBounded : Prop
  model : Type
  modelTopology : TopologicalSpace model
  growthBoundComponent : Prop
  conclusion : growthBoundComponent

def GrowthBoundednessWitnessClosed (O : GrowthBoundednessAdmittedObject) : Prop :=
  O.growthBoundComponent

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse