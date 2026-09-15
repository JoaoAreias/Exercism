resistor_bands <- c(
  black = 0,
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9
)

band_value <- function(band) {
  resistor_bands[band] |> unname()
}

two_band_value <- function(bands) {
  (10 * resistor_bands[bands[1]] + resistor_bands[bands[2]]) |> unname()
}

ohms <- function(bands) {
  two_band_value(bands) * 10^resistor_bands[bands[3]] |> unname()
}
