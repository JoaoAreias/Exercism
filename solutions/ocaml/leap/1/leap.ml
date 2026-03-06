let leap_year x =
    (x mod 400 == 0) || (x mod 4 == 0 && x mod 100 <> 0)
