let square_of_sum n = 
    let l = List.init n ((+) 1) in
    let sum = List.fold_left (+) 0 l in
    sum * sum

let sum_of_squares n =
    let l = List.init n (fun i -> (i + 1) * (i + 1)) in
    let sum = List.fold_left (+) 0 l in
    sum
    
let difference_of_squares n =
    (square_of_sum n) - (sum_of_squares n)