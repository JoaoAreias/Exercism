def is_armstrong_number(number):
    number_str = str(number)
    values = [int(n) for n in number_str]
    
    sums = sum(i ** len(values) for i in values)

    return number == sums