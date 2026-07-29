import GeometricStructures3ManifoldsCanonicalLaneLean.GeometricStructures3ManifoldsCanonicalLaneLean.Hyperbolization
import GeometricStructures3ManifoldsCanonicalLaneLean.GeometricStructures3ManifoldsCanonicalLaneLean.SeifertFiberedSpaces

/-!
# Geometric Decomposition Package
-/

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometricDecompositionPackage (A : AdmissibleClass) (H : HyperbolizationPackage A) (S : SeifertFiberedSpacePackage A) where
  jsjDecomposition : Prop
  toriBoundary : Prop
  geometricPieces : Prop
  uniqueness : Prop

structure GeometricDecompositionEvidence (A : AdmissibleClass) (H : HyperbolizationPackage A) (S : SeifertFiberedSpacePackage A) (D : GeometricDecompositionPackage A H S) where
  jsjDecompositionClosed : D.jsjDecomposition
  toriBoundaryClosed : D.toriBoundary
  geometricPiecesClosed : D.geometricPieces
  uniquenessClosed : D.uniqueness

def GeometricDecompositionClosed (A : AdmissibleClass) (H : HyperbolizationPackage A) (S : SeifertFiberedSpacePackage A) (D : GeometricDecompositionPackage A H S) : Prop :=
  D.jsjDecomposition ∧ D.toriBoundary ∧ D.geometricPieces ∧ D.uniqueness

theorem geometric_decomposition_closed_from_evidence (A : AdmissibleClass) (H : HyperbolizationPackage A) (S : SeifertFiberedSpacePackage A) (D : GeometricDecompositionPackage A H S) (E : GeometricDecompositionEvidence A H S D) : GeometricDecompositionClosed A H S D := by
  exact And.intro E.jsjDecompositionClosed (And.intro E.toriBoundaryClosed (And.intro E.geometricPiecesClosed E.uniquenessClosed))

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse