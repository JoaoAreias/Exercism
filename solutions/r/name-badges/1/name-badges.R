print_name_badge <- function(id, name, department) {
  badge <- if (!is.na(id)) sprintf("[%d] - %s -", id, name) else sprintf("%s -", name);
  badge <- paste(badge, (if (is.null(department)) "OWNER" else toupper(department)));
  badge
}

salaries_no_id <- function(ids, salaries) {
  sum(salaries[is.na(ids)])
}
