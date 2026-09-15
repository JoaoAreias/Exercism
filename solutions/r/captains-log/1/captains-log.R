random_planet_class <- function(number_needed) {
  strsplit("DHJKLMNRTY", "")|>
    unlist() |>
    sample(number_needed, replace = TRUE)
}

random_ship_registry_number <- function() {
  paste0("NCC-", as.character(sample(1000:9999, 1)))
}

shuffle_starships <- function(starships) {
  sample(starships)
}

random_stardate <- function() {
  runif(1, min=41000.0, max=42000.0)
}
