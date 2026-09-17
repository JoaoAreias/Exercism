type nucleotide = A | C | G | T

let hamming_distance dna1 dna2 =
  let rec distance = function
    | [], [] -> Ok 0
    | _, [] | [], _ -> Error "left and right strands must be of equal length"
    | x::xs, y::ys ->
      match distance (xs, ys) with
        | Ok d -> if x = y then Ok d else Ok (d + 1)
        | Error e -> Error e
  in
  match dna1, dna2 with
    | [], [] -> Ok 0
    | [], _ -> Error "left strand must not be empty"
    | _, [] -> Error "right strand must not be empty"
    | a, b -> distance (a, b)