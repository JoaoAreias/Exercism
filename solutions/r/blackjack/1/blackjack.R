library(dplyr)

parse_card <- function(card) {
  recode_values(
    card,
    "ace" ~ 11,
    c("ten", "jack", "queen", "king") ~ 10,
    "nine" ~ 9,
    "eight" ~ 8,
    "seven" ~ 7,
    "six" ~ 6,
    "five" ~ 5,
    "four" ~ 4,
    "three" ~ 3,
    "two" ~ 2,
    default = 0
  )
}

first_turn <- function(card1, card2, dealer_card) {
  sum_cards <- parse_card(card1) + parse_card(card2)
  case_when(
    card1 == "ace" && card2 == "ace" ~ "P",
    sum_cards == 21 && parse_card(dealer_card) < 10 ~ "W",
    sum_cards == 21 && parse_card(dealer_card) >= 10 ~ "S",
    between(sum_cards, 17, 20) ~ "S",
    between(sum_cards, 12, 16) && parse_card(dealer_card) < 7 ~ "S",
    between(sum_cards, 12, 16) && parse_card(dealer_card) >= 7 ~ "H",
    sum_cards <= 11 ~ "H"
  )
}
