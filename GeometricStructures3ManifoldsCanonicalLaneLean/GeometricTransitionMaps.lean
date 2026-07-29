import GeometricStructures3ManifoldsCanonicalLaneLean.GeometricStructures3ManifoldsCanonicalLaneLean.AdmissibleClass

/-!
# Geometric Transition Maps Package
-/

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometricTransitionMapsPackage (A : AdmissibleClass) where
  isometriesBetweenCharts : Prop
  pseudogroupStructure : Prop
  developability : Prop
  completeness : Prop

structure GeometricTransitionMapsEvidence (A : AdmissibleClass) (T : GeometricTransitionMapsPackage A) where
  isometriesBetweenChartsClosed : T.isometriesBetweenCharts
  pseudogroupStructureClosed : T.pseudogroupStructure
  developabilityClosed : T.developability
  completenessClosed : T.completeness

def GeometricTransitionMapsClosed (A : AdmissibleClass) (T : GeometricTransitionMapsPackage A) : Prop :=
  T.isometriesBetweenCharts ∧ T.pseudogroupStructure ∧ T.developability ∧ T.completeness

theorem geometric_transition_maps_closed_from_evidence (A : AdmissibleClass) (T : GeometricTransitionMapsPackage A) (E : GeometricTransitionMapsEvidence A T) : GeometricTransitionMapsClosed A T := by
  exact And.intro E.isometriesBetweenChartsClosed (And.intro E.pseudogroupStructureClosed (And.intro E.developabilityClosed E.completenessClosed))

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse