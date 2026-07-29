import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricStructures3ManifoldsCanonicalLaneLean.ThreeManifoldObjects

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure HyperbolizationPackage (M : ThreeManifold) where
  hyperbolizationExists : Prop
  hyperbolicMetric : Type u
  volumeFinite : Prop
  cuspEndsClassified : Prop

structure HyperbolizationEvidence {M : ThreeManifold} (H : HyperbolizationPackage M) where
  hyperbolizationExistsClosed : H.hyperbolizationExists
  volumeFiniteClosed : H.volumeFinite
  cuspEndsClassifiedClosed : H.cuspEndsClassified

def HyperbolizationClosed {M : ThreeManifold} (H : HyperbolizationPackage M) : Prop :=
  H.hyperbolizationExists ∧ H.volumeFinite ∧ H.cuspEndsClassified

theorem hyperbolization_closed_from_evidence {M : ThreeManifold} (H : HyperbolizationPackage M) (E : HyperbolizationEvidence H) : HyperbolizationClosed H := by
  exact And.intro E.hyperbolizationExistsClosed (And.intro E.volumeFiniteClosed E.cuspEndsClassifiedClosed)

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse