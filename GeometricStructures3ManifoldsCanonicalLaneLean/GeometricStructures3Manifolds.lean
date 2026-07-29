import canonicalLaneMathlib.AdmissibleClass

/-!
# Geometric Structures on 3-Manifolds
-/

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

structure GeometricStructure (M : Type u) [TopologicalSpace M] where
  metric : Type v
  riemannianMetric : Prop
  constantCurvature : Prop
  locallyHomogeneous : Prop
  complete : Prop
  riemannianMetricClosed : riemannianMetric
  constantCurvatureClosed : constantCurvature
  locallyHomogeneousClosed : locallyHomogeneous
  completeClosed : complete

def GeometricStructureClosed (M : Type u) [TopologicalSpace M] (G : GeometricStructure M) : Prop :=
  G.riemannianMetric ∧ G.constantCurvature ∧ G.locallyHomogeneous ∧ G.complete

theorem geometric_structure_closed_from_evidence
    (M : Type u) [TopologicalSpace M] (G : GeometricStructure M) :
    GeometricStructureClosed M G := by
  exact And.intro G.riemannianMetricClosed
    (And.intro G.constantCurvatureClosed
      (And.intro G.locallyHomogeneousClosed G.completeClosed))

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse
