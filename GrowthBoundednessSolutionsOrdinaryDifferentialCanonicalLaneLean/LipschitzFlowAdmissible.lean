import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean

structure LipschitzFlowPackage where
  vectorField : Type u
  lipschitzConstant : Prop
  flowDefined : Prop
  flowRegularity : Prop

structure LipschitzFlowEvidence (P : LipschitzFlowPackage) where
  lipschitzConstantClosed : P.lipschitzConstant
  flowDefinedClosed : P.flowDefined
  flowRegularityClosed : P.flowRegularity

def LipschitzFlowClosed (P : LipschitzFlowPackage) : Prop :=
  P.lipschitzConstant ∧ P.flowDefined ∧ P.flowRegularity

theorem lipschitz_flow_closed_from_evidence (P : LipschitzFlowPackage) (E : LipschitzFlowEvidence P) : LipschitzFlowClosed P := by
  exact And.intro E.lipschitzConstantClosed (And.intro E.flowDefinedClosed E.flowRegularityClosed)

end GrowthBoundednessSolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
