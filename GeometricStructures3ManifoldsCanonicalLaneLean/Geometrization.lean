import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometrizationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  primeDecomposition : Prop
  torusDecomposition : Prop
  geometricPieces : Prop
  eightGeometries : Prop

def GeometrizationClosed (G : GeometrizationPackage) : Prop :=
  G.primeDecomposition ∧ G.torusDecomposition ∧ G.geometricPieces ∧ G.eightGeometries

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse