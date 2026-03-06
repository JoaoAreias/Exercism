def is_armstrong_number(number):
    number_str = str(number)
    n = len(number_str)
    values = (int(n) for n in number_str)
    
    sums = sum(i ** n for i in values)

    return number == sums