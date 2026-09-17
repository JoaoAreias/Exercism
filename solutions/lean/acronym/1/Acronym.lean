namespace Acronym

def abbreviate (phrase : String) : String :=
  phrase.split (fun c => !c.isAlpha && c != '\'')
  |>.filter (fun s => !s.isEmpty)
  |>.map (fun s => s.front.toUpper)
  |> Std.Iter.toList
  |> String.ofList 

end Acronym
