def toRna:
  {"A": "U", "G": "C", "T": "A", "C": "G"} as $rnaMap
  | . | split("") | map($rnaMap[.]) | join("");
