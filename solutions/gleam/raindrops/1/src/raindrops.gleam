import gleam/list
import gleam/result
import gleam/int

pub fn convert(number: Int) -> String {
  let res = [
    #(3, "Pling"),
    #(5, "Plang"),
    #(7, "Plong")
  ]
  |> list.filter(fn(v) {number % v.0 == 0})
  |> list.map(fn(v) {v.1})
  |> list.reduce(fn(acc, v) {acc <> v})
  |> result.unwrap("")
  
  case res {
    "" -> int.to_base_string(number, 10) |> result.unwrap("")
    _ -> res
  }
}