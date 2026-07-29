import GeometricStructures3ManifoldsCanonicalLaneLean.GeometricStructures3ManifoldsCanonicalLaneLean.AdmissibleClass
import GeometricStructures3ManifoldsCanonicalLaneLean.GeometricStructures3ManifoldsCanonicalLaneLean.ThurstonGeometries

/-!
# Geometric Classification Package
-/

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometricClassificationPackage (A : AdmissibleClass) (T : ThurstonGeometriesPackage A) where
  geometryTypeIdentified : Prop
  geometricStructureExists : Prop
  classificationComplete : Prop
  uniqueness : Prop

structure GeometricClassificationEvidence (A : AdmissibleClass) (T : ThurstonGeometriesPackage A) (C : GeometricClassificationPackage A T) where
  geometryTypeIdentifiedClosed : C.geometryTypeIdentified
  geometricStructureExistsClosed : C.geometricStructureExists
  classificationCompleteClosed : C.classificationComplete
  uniquenessClosed : C.uniqueness

def GeometricClassificationClosed (A : AdmissibleClass) (T : ThurstonGeometriesPackage A) (C : GeometricClassificationPackage A T) : Prop :=
  C.geometryTypeIdentified ∧ C.geometricStructureExists ∧ C.classificationComplete ∧ C.uniqueness

theorem geometric_classification_closed_from_evidence (A : AdmissibleClass) (T : ThurstonGeometriesPackage A) (C : GeometricClassificationPackage A T) (E : GeometricClassificationEvidence A T C) : GeometricClassificationClosed A T C := by
  exact And.intro E.geometryTypeIdentifiedClosed (And.intro E.geometricStructureExistsClosed (And.intro E.classificationCompleteClosed E.uniquenessClosed))

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse