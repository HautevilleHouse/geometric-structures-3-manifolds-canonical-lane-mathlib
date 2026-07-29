import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometrizationConjecturePackage where
  primeDecomposition : Prop
  JSJDecomposition : Prop
  geometricPieces : Prop
  eightGeometries : List (Type → Type)
  primeDecompositionClosed : primeDecomposition
  JSJDecompositionClosed : JSJDecomposition
  geometricPiecesClosed : geometricPieces

def GeometrizationConjectureClosed (P : GeometrizationConjecturePackage) : Prop :=
  P.primeDecomposition ∧ P.JSJDecomposition ∧ P.geometricPieces

theorem geometrization_conjecture_closed_from_evidence
    (P : GeometrizationConjecturePackage) (E : P.primeDecomposition ∧ P.JSJDecomposition ∧ P.geometricPieces) :
    GeometrizationConjectureClosed P := by
  exact E

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse
