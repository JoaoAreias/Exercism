import gleam/int as i
import gleam/float as f
import gleam/string as s

pub fn pence_to_pounds(pence) {
  i.to_float(pence) /. 100.
}

pub fn pounds_to_string(pounds) {
  s.append("£", f.to_string(pounds))
}
