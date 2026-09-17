.colors as $c
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
  } as $color_code
| {
    "0": "",
    "3": "kilo",
    "6": "mega",
    "9": "giga",
  } as $prefix
| $c | map($color_code[(. | ascii_downcase)])
| ((.[0] * 10 + .[1]) * pow(10; .[2])) as $value
| $prefix | keys | map(tonumber) | [0] + map(select(pow(10; .) <= $value)) | max
| {
  "value": ($value / pow(10; .)),
  "unit": "\($prefix[. | tostring])ohms"
}