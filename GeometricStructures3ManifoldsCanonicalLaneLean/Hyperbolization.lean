import GeometricStructures3ManifoldsCanonicalLaneLean.GeometricStructures3ManifoldsCanonicalLaneLean.AdmissibleClass

/-!
# Hyperbolization Package
-/

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure HyperbolizationPackage (A : AdmissibleClass) where
  hyperbolizable : Prop
  completeFiniteVolume : Prop
  mostowRigidity : Prop
  dehnFillingAllowed : Prop

structure HyperbolizationEvidence (A : AdmissibleClass) (H : HyperbolizationPackage A) where
  hyperbolizableClosed : H.hyperbolizable
  completeFiniteVolumeClosed : H.completeFiniteVolume
  mostowRigidityClosed : H.mostowRigidity
  dehnFillingAllowedClosed : H.dehnFillingAllowed

def HyperbolizationClosed (A : AdmissibleClass) (H : HyperbolizationPackage A) : Prop :=
  H.hyperbolizable ∧ H.completeFiniteVolume ∧ H.mostowRigidity ∧ H.dehnFillingAllowed

theorem hyperbolization_closed_from_evidence (A : AdmissibleClass) (H : HyperbolizationPackage A) (E : HyperbolizationEvidence A H) : HyperbolizationClosed A H := by
  exact And.intro E.hyperbolizableClosed (And.intro E.completeFiniteVolumeClosed (And.intro E.mostowRigidityClosed E.dehnFillingAllowedClosed))

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse