def parse:
  if . == " " then empty
  else tonumber
  end;

def luhmDouble:
  . * 2 | if . > 9 then . - 9 else . end;

def luhmAlgorithm:
  ([.[range(0; length; 2)]] | add) as $even
  | ([.[range(1; length; 2)]] | map(luhmDouble) | add) as $odd
  | ($even + $odd) % 10 == 0;

split("")
| try(map(parse)) catch []
| reverse
| (. | length) > 1 and (. | luhmAlgorithm)