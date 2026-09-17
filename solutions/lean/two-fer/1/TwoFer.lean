namespace TwoFer

def twoFer (name : Option String) : String :=
  match name with
  | some n => s!"One for {n}, one for me."
  | none => "One for you, one for me."

end TwoFer

