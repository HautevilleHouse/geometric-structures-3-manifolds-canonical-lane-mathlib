import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure HyperbolicStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  hyperbolicMetric : Type v
  constantNegativeCurvature : Prop
  complete : Prop
  finiteVolume : Prop

def HyperbolicStructureClosed (H : HyperbolicStructurePackage) : Prop :=
  H.constantNegativeCurvature ∧ H.complete ∧ H.finiteVolume

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse