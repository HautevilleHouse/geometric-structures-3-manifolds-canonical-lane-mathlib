import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure ThreeManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  dimension3 : Prop
  hausdorffSecondCountable : Prop
  connected : Prop

structure ThreeAdmittedObject where
  manifold : ThreeManifold
  closedManifold : Prop
  orientable : Prop
  primeDecomposition : Prop
  geometrizationPieces : Prop
  conclusion : closedManifold ∧ orientable ∧ primeDecomposition ∧ geometrizationPieces

structure ThreeManifoldEndgameState where
  object : ThreeAdmittedObject

def ThreeManifoldWitnessClosed (O : ThreeAdmittedObject) : Prop :=
  O.conclusion

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse