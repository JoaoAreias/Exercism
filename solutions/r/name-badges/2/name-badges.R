print_name_badge <- function(id, name, department) {
  dept_label <- if (is.null(department)) "OWNER" else toupper(department);
  
  if (is.na(id)) {
    sprintf("%s - %s", name, dept_label)
  } else {
    sprintf("[%d] - %s - %s", id, name, dept_label)
  }
}

salaries_no_id <- function(ids, salaries) {
  sum(salaries[is.na(ids)])
}
