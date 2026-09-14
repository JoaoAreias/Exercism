today <- function(birds_per_day) {
  birds_per_day[length(birds_per_day)]
}

increment_todays_count <- function(birds_per_day) {
  birds_per_day[length(birds_per_day)] <- today(birds_per_day) + 1
  birds_per_day
}

has_day_without_birds <- function(birds_per_day) {
  any(birds_per_day == 0)
}

count_for_first_days <- function(birds_per_day, num_days) {
  sum(birds_per_day[1:num_days])
}

busy_days <- function(birds_per_day) {
  length(which(birds_per_day >= 5))
}

running_total <- function(birds_per_day) {
  cumsum(birds_per_day)
}

busy_days_of_week <- function(birds_per_day, day_names) {
  idx = order(birds_per_day, decreasing = TRUE)
  day_names[idx]
}
