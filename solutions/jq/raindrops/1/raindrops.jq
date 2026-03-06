[
  (if (.number % 3) == 0 then "Pling" else "" end) +
  (if (.number % 5) == 0 then "Plang" else "" end) +
  (if (.number % 7) == 0 then "Plong" else "" end),
  .number
]
| if .[0] == "" then .[1] else .[0] end