function raindrops(number::Int)
    sounds = [
        (3, "Pling"),
        (5, "Plang"),
        (7, "Plong"),
    ]
    
    out = ""
    for (k, v) in sounds
        if number % k == 0
            out *= v
        end
    end

    if out == ""
        return string(number)
    else
        return out
    end
end
