import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure SeifertFiberedPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  circleFibration : Prop
  baseOrbifold : Type v
  orbifoldEulerCharacteristic : Prop
  exceptionalFibers : List Nat

def SeifertFiberedClosed (S : SeifertFiberedPackage) : Prop :=
  S.circleFibration ∧ S.orbifoldEulerCharacteristic

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse