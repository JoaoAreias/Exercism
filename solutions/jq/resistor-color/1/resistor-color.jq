. as $data
| {
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9
  }
| if $data.property == "colors" then (. | to_entries | sort_by(.value) | map(.key))
  else .[$data.input.color]
  end