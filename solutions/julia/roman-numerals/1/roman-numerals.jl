function format(number::Int, unit::Int, ones::Char, fives::Char, tens::Char)
    number = div(number % (unit * 10), unit)
    if number < 4
        return ones ^ number
    elseif number == 4
        return ones * fives
    elseif number == 9
        return ones * tens
    elseif number >= 5
        return fives * (ones ^ (number - 5))
    else
        return ""
    end
end


function to_roman(number)
    if number <= 0
        throw(ErrorException("Error"))
    end
    out = ""
    out *= format(number, 1000, 'M', ' ', ' ')
    out *= format(number, 100, 'C', 'D', 'M')
    out *= format(number, 10, 'X', 'L', 'C')
    out *= format(number, 1, 'I', 'V', 'X')

    return out
end
