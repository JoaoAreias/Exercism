success_rate <- function(speed) {
  if (speed <= 0) {
    return(0.)
  } else if (1 <= speed && speed <= 4) {
    return(1.)
  } else if (5 <= speed && speed <= 8) {
    return(0.9)
  } else if (speed == 9) {
    return(0.8)
  } else {
    return(0.77)
  }
}

production_rate_per_hour <- function(speed) {
  221 * speed * success_rate(speed)
}

working_items_per_minute <- function(speed) {
  floor(production_rate_per_hour(speed) / 60)
}
