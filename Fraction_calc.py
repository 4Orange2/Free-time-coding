# this is a fraction calculator

def get_list_frac(equation):
    print("get_list_frac:")
    index = 0
    fractions = []
    print("equation: {}".format(equation))
    print("-------")
    while index <= len(equation):
        print("This is the index: {}".format(index))
        new_frac = str(equation[index])
        print(new_frac)
        fractions.append(new_frac)
        print("All fractions: {}".format(fractions))
        index += 2
        print("--")
    return fractions

def separate_frac(fracs, denom=False):
    print("separate_frac:")
    numbers = []
    index = 0
    identify_face = "denominators" if denom else "numerators"
    while index < len(fracs):
        split_fracs = fracs[index].split("/")
        new_number = split_fracs[1] if denom else split_fracs[0]
        numbers.append(new_number)
        print("These are the {}: {}".format(identify_face, numbers))
        index += 1
        print("This is index: {}".format(index))
    return numbers

def get_operators(equation):
    print("get_operators:")
    operators = []
    index = 1
    while index < len(equation):
        operators += equation[index]
        print("These are the operators: {}".format(operators))
        index += 2
        print("This is index: {}".format(index))
    return operators

def simplify(numer, denom):
    exit = 0
    if numer > denom:
        factor = numer
    else:
        factor = denom
    while exit < 1:
        gcf = (numer % factor) == 0 and (
            denom % factor) == 0
        print("this is the new  factor: " + str(factor))
        print(gcf)
        print("---")
        if gcf == False:
            factor -= 1
        elif gcf == True:
            numer = int(numer / factor)
            denom = int(denom / factor)
            exit += 1
        else:
            print("error")
    return (str(numer) + "/" + str(denom))

def get_lcm(denom):
    denom.sort()
    index = 0
    multiple = int(denom[0])
    static_multiple = multiple
    print("this is the smallest number: " + str(multiple))
    print("---")
    exit = 0
    while exit < (len(denom) - 1):
        lcm = (multiple % static_multiple) == 0 and (
            int(denom[index + 1]) % multiple) == 0
        print("this is multiple: " + str(multiple))
        print(lcm)
        print("---")
        if lcm == False:
            multiple += 1
        elif lcm == True:
            static_multiple = multiple
            index += 1
            exit += 1
        else:
            print("error")
    return multiple

def add(numers, denoms, index):
    print(denoms)
    lcm = get_lcm(denoms)
    print("LCM: {}".format(lcm))
    factor_for_numer_1 = int(denoms[index]) / lcm
    factor_for_numer_2 = int(denoms[index + 1]) / lcm
    print("this is the first denominator: ")
    print(int(denoms[index]))
    print("all denominators: ")
    print(denoms)
    #print("Multiplying factor: {}".format(factor_for_numer))
    new_numer_1 = factor_for_numer_1 * int(numers[index])
    print("1st numer: {}".format(new_numer_1))
    new_numer_2 = factor_for_numer_2 * int(numers[index + 1])
    print("2nd numer: {}".format(new_numer_2))
    sum_of_numer = new_numer_1 + new_numer_2
    print("This is sum {}".format(sum_of_numer))
    simple_add = simplify(sum_of_numer, lcm)
    return simple_add

def subtract(numer, denom, index):
    lcm = get_lcm(denom)
    print("LCM: {}".format(lcm))
    factor_for_numer = lcm / int(denom[0])
    new_numer_1 = factor_for_numer * int(numers[index])
    print("1st numer: {}".format(new_numer_1))
    new_numer_2 = factor_for_numer * int(numers[index + 1])
    print("2nd numer: {}".format(new_numer_2))
    diff_of_numer = new_numer_1 - new_numer_2
    simple_subt = simplify(subtraction, lcm)
    return simple_subt

def multiply(numer, denom, index):
    product_numers = int(numer[index]) * int(numer[index + 1])
    print("multiplied numers: {}".format(product_numers))
    product_denoms = int(denom[index]) * int(denom[index + 1])
    print("multiplied denoms: {}".format(product_denoms))
    multiplied_fraction = simplify(product_numers, product_denoms)
    return multiplied_fraction

def divide(numer, denom, index):
    product_numer = int(numer[index]) * int(denom[index + 1])
    print("multiplied numer and denom: {}".format(product_numers))
    product_denom = int(denom[index]) * int(numer[index + 1])
    print("multiplied denom and numer: {}".format(product_denoms))
    divided_fraction = simplify(product_numer, product_denom)
    return divided_fraction

def solve(equation):
    fractions = get_list_frac(equation)
    numers = separate_frac(fractions) # creates a list of numerators
    denoms = separate_frac(fractions, denom=True) # creates a list of denominators
    operators = get_operators(equation) # creates a list of operators
    answer = ""
    index = 0
    while index < (len(numers) - 1):
        if operators[index] == "/" or operators[index] == "*":
            if operators[index] == "/":
                answer += str(divide(numers, denoms, index)) + " / "
            else:
                answer += str(multiply(numers, denoms, index)) + " * "
        elif operators[index] == "+" or operators[index] == "-":
            if operators[index] == "+":
                answer += add(numers, denoms, index) + " + "
            else:
                answer += subtract(numers, denoms, index) + " - "
        index += 2
    answer_list = answer.split(" ")
    print(answer_list)
    if len(answer_list) > 2:
        for i in range(2):
            answer_list.pop()
        print(answer_list)
        solve(answer_list)
    return answer_list

equation = (input("Type the equation here: ").split(" "))
print(solve(equation))
