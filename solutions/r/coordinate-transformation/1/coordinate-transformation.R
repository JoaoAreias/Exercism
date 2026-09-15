scale <- function(point, s) {
  s * point
}

translate <- function(point, ...) {
  point + c(...)
}

transform2d <- function(dx=0, dy=0, s=1) {
  \(point) translate(point, dx, dy) |> scale(s)
}

transform3d <- function(dx=0, dy=0, dz=0, s=1) {
  \(point) translate(point, dx, dy, dz) |> scale(s)
}
