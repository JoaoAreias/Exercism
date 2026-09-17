import gleam/list
import gleam/int
import gleam/string

pub fn convert(number: Int) -> String {
  let res = [
    #(3, "Pling"),
    #(5, "Plang"),
    #(7, "Plong")
  ]
  |> list.filter(fn(v) {number % v.0 == 0})
  |> list.map(fn(v) {v.1})
  |> string.concat
  
  case res {
    "" -> int.to_string(number)
    _ -> res
  }
}