# Exercise 1 - Use a for loop to write a function has_digit that consumes a nonempty string
and determines whether or not there is at least one digit in the string, producing True if so and False otherwise.

def has_digit(string):
    if string == "":
        return False
    for index in string:
        has_digit = index.isdigit()
        if has_digit:
            return True
    return False
    
def test_has_digit():
    assert has_digit("cat") == False
    assert has_digit("2wenty") == True
    assert has_digit("t2enty") == True
    assert has_digit("Tw2nty") == True
    assert has_digit("") == False

test_has_digit()

# Exercise 2 - Use a for loop to write a function my_power that consumes two inputs base and exponent, 
where base is a non-negative integer or floating point number and exponent is a non-negative integer. 
Your function should produce base to the exponent power. The computation should be made using repeated multiplication.

def my_power(base, exponent):
    ''' Calculates base to the exponent
    
    Parameters:
    Base: a non-negative number
    Exponent: a non-negative integer
    '''
    product = base
    for i in range(1, exponent):
        product *= base
    return product

print(my_power(2, 1))
print(my_power(2, 3))
print(my_power(5, 4))

# Exercise 3 - Use a for loop to write a function no_nums that consumes a string and produces a string which has the same characters 
as the input but with all digits removed.

def no_nums(string):
    listed = list(string)
    for item in listed:
        if item.isdigit():
            listed.remove(item)
    new_string = ''.join([str(elem) for elem in listed])
    return new_string

print(no_nums("cat2"))
print(no_nums(""))
print(no_nums("cat"))
print(no_nums("2e"))

# Exercise 4 - Use a for loop to write a function swap_case that consumes a string and produces a string which has the same characters 
as the input but with any lower-case letter replaced by the corresponding upper-case letter and any upper-case letter replaced by 
the corresponding lower-case letter.

def swap_case(string):
    new_string = ""
    for char in string:
        if char.islower():
            new_string += char.upper()
        elif char.isupper():
            new_string += char.lower()
        else:
            new_string += char
    return new_string

print(swap_case("Hello"))
print(swap_case("Hello1"))

# Exercise 5 - 
