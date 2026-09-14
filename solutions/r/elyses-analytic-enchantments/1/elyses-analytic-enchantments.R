does_stack_include_card <- function(stack, card) {
  any(stack == card)
}

get_card_position <- function(stack, card) {
  positions <- which(stack == card)
  if (length(positions) > 0) {
    return(positions)
  }
  -1
}

is_each_card_even <- function(stack) {
  all(stack %% 2 == 0)
}

does_stack_include_odd_card <- function(stack) {
  any(stack %% 2 == 1)
}

get_first_odd_card <- function(stack) {
  idx = which(stack %% 2 == 1)[1];
  if (is.na(idx)) return(-1);
  stack[idx]
}

get_first_even_card_position <- function(stack) {
  idx = which(stack %% 2 == 0)[1];
  if (is.na(idx)) return(-1);
  idx
}
