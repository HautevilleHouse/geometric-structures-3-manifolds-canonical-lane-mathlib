import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometricAdmissibleObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  geometricStructureSatisfied : Prop
  conclusion : geometricStructureSatisfied

def GeometricWitnessClosed (O : GeometricAdmissibleObject) : Prop :=
  O.geometricStructureSatisfied

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse