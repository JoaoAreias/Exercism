let sum_list l =
  List.fold_left ( + ) 0 l

let square_of_sum n = 
    let l = List.init n (( + ) 1) in
    let sum = sum_list l in
    sum * sum
    
let sum_of_squares n =
    let l = List.init n (fun i -> (i + 1) * (i + 1)) in
    sum_list l
    
let difference_of_squares n =
    square_of_sum n - sum_of_squares n