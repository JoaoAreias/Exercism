import gleam/string

pub fn message(log_line: String) -> String {
  let parts = string.split(log_line, ":")
  case parts {
    [_, message] -> string.trim(message)
  }
}

pub fn log_level(log_line: String) -> String {
  let parts = string.split(log_line, "]")
  case parts {
    [level, _] -> string.trim(level |> string.replace("[", "")) |> string.lowercase
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> string.lowercase(log_level(log_line)) <> ")"
}
