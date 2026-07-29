import GeometricStructures3ManifoldsCanonicalLaneLean.GeometricStructures3ManifoldsCanonicalLaneLean.AdmissibleClass

/-!
# Seifert Fibered Spaces Package
-/

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure SeifertFiberedSpacePackage (A : AdmissibleClass) where
  seifertFibration : Prop
  baseOrbifold : Prop
  eulerClass : Prop
  geometricStructure : Prop

structure SeifertFiberedSpaceEvidence (A : AdmissibleClass) (S : SeifertFiberedSpacePackage A) where
  seifertFibrationClosed : S.seifertFibration
  baseOrbifoldClosed : S.baseOrbifold
  eulerClassClosed : S.eulerClass
  geometricStructureClosed : S.geometricStructure

def SeifertFiberedSpaceClosed (A : AdmissibleClass) (S : SeifertFiberedSpacePackage A) : Prop :=
  S.seifertFibration ∧ S.baseOrbifold ∧ S.eulerClass ∧ S.geometricStructure

theorem seifert_fibered_space_closed_from_evidence (A : AdmissibleClass) (S : SeifertFiberedSpacePackage A) (E : SeifertFiberedSpaceEvidence A S) : SeifertFiberedSpaceClosed A S := by
  exact And.intro E.seifertFibrationClosed (And.intro E.baseOrbifoldClosed (And.intro E.eulerClassClosed E.geometricStructureClosed))

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse