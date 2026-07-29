import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricStructures3ManifoldsCanonicalLaneLean.ThreeManifoldObjects
import HautevilleHouse.GeometricStructures3ManifoldsCanonicalLaneLean.ThurstonGeometrization

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometricTransitionPackage (M : ThreeManifold) (G : GeometrizationPackage M) where
  modelHomogeneities : List String
  transitionMapsConsistent : Prop
  localStructurePreserved : Prop
  transitionClosed : Prop

structure GeometricTransitionEvidence {M : ThreeManifold} {G : GeometrizationPackage M} (T : GeometricTransitionPackage M G) where
  transitionMapsConsistentClosed : T.transitionMapsConsistent
  localStructurePreservedClosed : T.localStructurePreserved
  transitionClosedClosed : T.transitionClosed

def GeometricTransitionClosed {M : ThreeManifold} {G : GeometrizationPackage M} (T : GeometricTransitionPackage M G) : Prop :=
  T.transitionMapsConsistent ∧ T.localStructurePreserved ∧ T.transitionClosed

theorem geometric_transition_closed_from_evidence {M : ThreeManifold} {G : GeometrizationPackage M} (T : GeometricTransitionPackage M G) (E : GeometricTransitionEvidence T) : GeometricTransitionClosed T := by
  exact And.intro E.transitionMapsConsistentClosed (And.intro E.localStructurePreservedClosed E.transitionClosedClosed)

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse