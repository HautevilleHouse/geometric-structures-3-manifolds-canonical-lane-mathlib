import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricStructures3ManifoldsCanonicalLaneLean.ThreeManifoldObjects
import HautevilleHouse.GeometricStructures3ManifoldsCanonicalLaneLean.HyperbolizationTheorem

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometrizationPackage (M : ThreeManifold) where
  eightGeometries : List String
  decompositionExists : Prop
  canonicalPieces : Prop
  geometrizationConclusion : Prop

structure GeometrizationEvidence {M : ThreeManifold} (G : GeometrizationPackage M) where
  decompositionExistsClosed : G.decompositionExists
  canonicalPiecesClosed : G.canonicalPieces
  geometrizationConclusionClosed : G.geometrizationConclusion

def GeometrizationClosed {M : ThreeManifold} (G : GeometrizationPackage M) : Prop :=
  G.decompositionExists ∧ G.canonicalPieces ∧ G.geometrizationConclusion

theorem geometrization_closed_from_evidence {M : ThreeManifold} (G : GeometrizationPackage M) (E : GeometrizationEvidence G) : GeometrizationClosed G := by
  exact And.intro E.decompositionExistsClosed (And.intro E.canonicalPiecesClosed E.geometrizationConclusionClosed)

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse