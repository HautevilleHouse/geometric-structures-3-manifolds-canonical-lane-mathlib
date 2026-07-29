import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure UniformizationPackage where
  geometricStructure : Type u
  uniformizationTheorem : Prop
  modelGeometry : Prop
  holonomyRepresentation : Prop
  developingMap : Prop

def UniformizationClosed (U : UniformizationPackage) : Prop :=
  U.uniformizationTheorem ∧ U.modelGeometry ∧ U.holonomyRepresentation ∧ U.developingMap

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse