import gleam/list as l

pub fn append(first first: List(a), second second: List(a)) -> List(a) {
  //case first {
  //  [] -> second
  //  [h, ..t] -> [h, ..append(t, second), ..second]
  //}
  l.append(first, second)
}

pub fn concat(lists: List(List(a))) -> List(a) {
  l.concat(lists)
}

pub fn filter(list: List(a), function: fn(a) -> Bool) -> List(a) {
  l.filter(list, function)
  //case list {
  //  [] -> []
  //  [h, ..t] if function(h) -> [h, ..filter(t, function)]
  //  [h, ..t] if !function(h) -> filter(t, function)
  //}
}


pub fn length(list: List(a)) -> Int {
  case list {
    [] -> 0
    [_h, ..t] -> 1 + length(t)
  }
}

pub fn map(list: List(a), function: fn(a) -> b) -> List(b) {
  case list {
    [] -> []
    [h, ..t] -> [function(h), ..map(t, function)]
  }
}

pub fn foldl(
  over list: List(a),
  from initial: b,
  with function: fn(b, a) -> b,
) -> b {
  case list {
    [] -> initial
    [h, ..t] -> foldl(t, function(initial, h), function)
  }
}

pub fn foldr(
  over list: List(a),
  from initial: b,
  with function: fn(b, a) -> b,
) -> b {
  case list {
    [] -> initial
    [h, ..t] -> function(foldr(t, initial, function), h)
  }
}

pub fn reverse(list: List(a)) -> List(a) {
  case list {
    [] -> []
    [h, ..t] -> append(reverse(t), [h])
  }
}
