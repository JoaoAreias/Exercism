proc reverse*(s: string): string =
  var outStr: string
  for i in countdown(s.len() - 1, 0):
    outStr.add(s[i])
  return outStr
