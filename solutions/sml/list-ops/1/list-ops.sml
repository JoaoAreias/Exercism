fun concat []                 = []
  | concat [[]]               = []
  | concat ([] :: xss)        = concat xss
  | concat ((x :: xs) :: xss) = x :: concat (xs :: xss)

fun reverse_(a: int list, b: int list): int list =
  if null(a) then b
  else reverse_(tl(a), hd(a)::b)

fun reverse (list: int list): int list =
  reverse_(list, [])

fun filter (function: int -> bool, list: int list): int list =
  if null(list) then []
  else if function(hd(list)) then hd(list) :: filter(function, tl(list))
  else filter(function, tl(list))

fun map (function: int -> int, list: int list): int list =
  if null(list) then list
  else [function(hd(list))] @ map(function, tl(list))

fun append (list1: int list, list2: int list): int list =
  if null(list1) then list2
  else hd(list1)::append(tl(list1), list2)

fun length (ns: int list): int =
  if null(ns) then 0
  else 1 + length(tl(ns))

fun foldl (function: int * int -> int, initial: int, list: int list): int =
  if null(list) then initial
  else foldl(function, function(initial, hd(list)), tl(list))

fun foldr (function: int * int -> int, initial: int, list: int list): int =
  if null(list) then initial
  else function(hd(list), foldr(function, initial, tl(list)))
