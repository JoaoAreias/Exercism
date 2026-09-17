def square_root(number):
    l: int = 1
    r: int = number
    m: int = (l + r) // 2

    while m * m != number:
        if m * m < number:
            l = m
        else:
            r = m + 1
        m = (l + r) // 2

    return m
