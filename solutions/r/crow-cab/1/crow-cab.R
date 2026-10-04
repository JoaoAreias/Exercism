simplex <- function(a, b) {
  a + b * 1i
}

driver_directions <- function(start, end) {
  end - start
}

manhattan <- function(start, end) {
  directions <- driver_directions(start, end);
  abs(Re(directions)) + abs(Im(directions))
}

as_crow_flies <- function(start, end) {
  abs(driver_directions(start, end))
}

crow_directions <- function(start, end) {
  Conj(driver_directions(start, end))
}
