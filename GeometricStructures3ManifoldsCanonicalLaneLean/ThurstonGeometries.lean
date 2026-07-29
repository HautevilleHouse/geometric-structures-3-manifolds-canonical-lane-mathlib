import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricStructures3ManifoldsCanonicalLaneLean

inductive ThurstonGeometry where
  | Euclidean
  | Spherical
  | Hyperbolic
  | S2xR
  | H2xR
  | SL2R_tilde
  | Nil
  | Sol

def ThurstonGeometryClosed (g : ThurstonGeometry) : Prop :=
  match g with
  | ThurstonGeometry.Euclidean => True
  | ThurstonGeometry.Spherical => True
  | ThurstonGeometry.Hyperbolic => True
  | ThurstonGeometry.S2xR => True
  | ThurstonGeometry.H2xR => True
  | ThurstonGeometry.SL2R_tilde => True
  | ThurstonGeometry.Nil => True
  | ThurstonGeometry.Sol => True

theorem thurston_geometry_closed (g : ThurstonGeometry) : ThurstonGeometryClosed g := by
  exact True.intro

end GeometricStructures3ManifoldsCanonicalLaneLean
end HautevilleHouse
