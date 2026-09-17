def is_armstrong_number(number):
    values = []
    number_str = str(number)
    for i in number_str:
        values.append(int(i))
    sums = sum((i ** len(values) for i in values))

    return number == sums