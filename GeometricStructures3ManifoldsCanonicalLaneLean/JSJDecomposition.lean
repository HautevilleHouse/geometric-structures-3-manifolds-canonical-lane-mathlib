import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricStructures3ManifoldsCanonicalLaneLean.ThreeManifoldObjects

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure JSJDecompositionPackage (M : ThreeManifold) where
  essentialTori : List (Type u)
  decompositionExists : Prop
  characteristicSubmanifold : Prop
  uniquelyDerived : Prop

structure JSJDecompositionEvidence {M : ThreeManifold} (J : JSJDecompositionPackage M) where
  decompositionExistsClosed : J.decompositionExists
  characteristicSubmanifoldClosed : J.characteristicSubmanifold
  uniquelyDerivedClosed : J.uniquelyDerived

def JSJDecompositionClosed {M : ThreeManifold} (J : JSJDecompositionPackage M) : Prop :=
  J.decompositionExists ∧ J.characteristicSubmanifold ∧ J.uniquelyDerived

theorem jsj_decomposition_closed_from_evidence {M : ThreeManifold} (J : JSJDecompositionPackage M) (E : JSJDecompositionEvidence J) : JSJDecompositionClosed J := by
  exact And.intro E.decompositionExistsClosed (And.intro E.characteristicSubmanifoldClosed E.uniquelyDerivedClosed)

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse