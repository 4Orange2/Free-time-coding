# Exercise 1 - Use a for loop to write a function has_digit that consumes a nonempty string
# and determines whether or not there is at least one digit in the string, producing True if so and False otherwise.

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
# where base is a non-negative integer or floating point number and exponent is a non-negative integer. 
# Your function should produce base to the exponent power. The computation should be made using repeated multiplication.

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
# as the input but with all digits removed.

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
# as the input but with any lower-case letter replaced by the corresponding upper-case letter and any upper-case letter replaced by 
# the corresponding lower-case letter.

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

# Exercise 5 - A Canadian postal code is of the form "A9A 9A9", where 9 represents a digit and A represents an upper-case letter. 
# Fill in the helper functions and the main function, using for loops in the helper functions.
# Do not allow lower-case letters.

def all_upper(entry):
    """Determines if a string is all upper-case letters

       Preconditions:
       entry: string

       Parameter:
       entry: candidate string to check

       Returns: True if so, False otherwise
    """
    for char in entry:
        if char.isupper():
            condition = True
        else:
            condition = False
    return condition

def all_digit(entry):
    """Determines if a string is all digits

       Preconditions:
       entry: string

       Parameter:
       entry: candidate string to check

       Returns: True if so, False otherwise
    """
    for char in entry:
        if char.isdigit():
            condition = True
        else:
            condition = False
    return condition

def get_even_numbers(entry):
    even = ""
    print("---")
    print("These are the even numbers.")
    for index in range(len(entry)):
        if index % 2 == 0:
            even += entry[index]
            print("This is the main string: " + entry)
            print("This is the even number: " + even)
    return even
    
def get_odd_numbers(entry):
    odd = ""
    print("---")
    print("These are the odd numbers.")
    for index in range(len(entry)):
        if index % 2 == 1:
            odd += entry[index]
            print("This is the main string: " + entry)
            print("This is the odd number: " + odd)
    return odd

def merge_string(entry_1, entry_2):
    merged = ""
    print("---")
    for index in range(len(entry_1)):
        substr_merge = entry_1[index] + entry_2[index]
        merged += substr_merge
        print("This is the merged substring: " + substr_merge)
        print("This is the merged string: " + merged)
    return merged

def postal_code(entry):
    """Determines if a string is A9A 9A9 in form.

       Preconditions:
       entry: string

       Parameter:
       entry: candidate string to check

       Returns: True if so, False otherwise
    """
    index = 0
    condition = False
    nums = ""
    alpha = ""
    error = ("Error - invalid syntax. Ensure that your postal code is in the A9A 9A9 form. "
            "Where 9 represents a digit and A represents an uppercase letter.")
    if len(entry) == 7 and entry[3] == " ":
        stripped_entry = entry.replace(" ", "")
        print("This is the stripped entry: " + stripped_entry)
        even = get_even_numbers(stripped_entry)
        print("These are the letters: " + even)
        odd = get_odd_numbers(stripped_entry)
        print("These are the numbers: " + odd)
        uppercase = all_upper(even)
        digit = all_digit(odd)
        if digit and uppercase:
            print("---")
            return "This is a valid postal code"
        else:
            return error
    else:
        return error
print(postal_code("A9A 9A9"))
print("------")
print(postal_code("A999A9"))
print("------")
print(postal_code("A9AAA9"))
print("------")
print(postal_code("A9A9A9"))
