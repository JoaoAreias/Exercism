(hypot(.x; .y)) as $r
| [[1, 10], [5, 5], [10, 1]]
| map(if $r <= .[0] then .[1] else 0 end)
| max