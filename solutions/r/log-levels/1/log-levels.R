library(stringr)

message <- function(msg) {
  sub("\\[.*\\]:\\s*", "", msg) |> trimws()
}

log_level <- function(msg) {
  sub("\\[(.*)\\].*", "\\1", msg) |> 
  trimws() |>
  str_to_lower()
}

reformat <- function(msg) {
  sprintf("%s (%s)", message(msg), log_level(msg))
}
