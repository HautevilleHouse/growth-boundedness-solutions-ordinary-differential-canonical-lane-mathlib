import GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GrowthBoundednessWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse