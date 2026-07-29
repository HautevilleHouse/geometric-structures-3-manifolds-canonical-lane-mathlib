import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricStructures3Manifolds

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeometricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricStructures3Manifolds
end HautevilleHouse