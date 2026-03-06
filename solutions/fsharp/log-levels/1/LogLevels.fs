module LogLevels

let message (logLine: string): string =
    let start = logLine.IndexOf(":")
    logLine.[start+1..].Trim()

let logLevel(logLine: string): string = 
    let endLog = logLine.IndexOf("]")
    logLine.[1..endLog-1].ToLower()

let reformat(logLine: string): string = 
    let m = message logLine
    let l = logLevel logLine
    sprintf "%s (%s)" m l
