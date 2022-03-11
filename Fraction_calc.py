# this is a fraction calculator
numerator = list(input("Numerators: ").split(" "))
denominator = list(input("Denominators: ").split(" "))
operation = input("What operation would you like to use? ").lower()
print("numerators: {}".format(numerator))
print("denominators: {}".format(denominator))

def simplify(numer, denom):
    exit = 0
    if numer > denom:
        factor = numer
    else:
        factor = denom
    while exit < 1:
            gcf = (numer % factor) == 0 and (
                denom % factor) == 0
            #print("this is the new  factor: " + str(factor))
            #print(gcf)
            #print("---")
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
    #print("this is the smallest number: " + str(multiple))
    #print("---")
    exit = 0
    while exit < (len(denom) - 1):
        lcm = (multiple % static_multiple) == 0 and (
            multiple % int(denom[index + 1])) == 0
        #print("this is the new number: " + denom[index + 1])
        #print("this is multiple: " + str(multiple))
        #print(lcm)
        #print("---")
        if lcm == False:
            multiple += 1
        elif lcm == True:
            static_multiple = multiple
            index += 1
            exit += 1
        else:
            print("error")
    return multiple
        
if operation == "add":
    def add(numer, denom):
        lcm = get_lcm(denom)
        index = 0
        exit = 0
        new_numerators = []
        addition = 0
        #print(len(numer))
        while exit < len(numer):
            factor = lcm // int(denom[index])
            #print("factor: "+ str(factor))
            product = factor * int(numer[index])
            #print("product: " + str(product))
            #print("--")
            addition += product
            index += 1
            exit += 1
        print(addition)
        simplify_add = simplify(addition, lcm)
        return simplify_add
    print(add(numerator, denominator))
    
elif operation == "subt":
    def subtract(numer, denom):
        lcm = get_lcm(denom)
        index = 1
        exit = 1
        new_numerators = []
        #print(len(numer))
        subtraction = int(numer[0]) * (lcm // int(denom[0]))
        while exit < len(numer):
            factor = lcm // int(denom[index])
            print("factor: "+ str(factor))
            product = factor * int(numer[index])
            print("product: " + str(product))
            subtraction -= product
            print("difference: " + str(subtraction))
            print("--")
            index += 1
            exit += 1
        simple_subt = simplify(subtraction, lcm)    
        return simple_subt
    print(subtract(numerator, denominator))
        
elif operation == "mult":
    def multiply(numer, denom):
        product_numer = int(numer[0])
        product_denom = int(denom[0])
        index = 1
        exit = 0
        while exit < (len(numer)- 1): 
            product_numer *= int(numer[index])
            product_denom *= int(denom[index])
            index += 1
            exit += 1
        multiplied_fraction = simplify(product_numer, product_denom)
        return multiplied_fraction
    print(multiply(numerator, denominator))

elif operation == "div":
    def divide(numer, denom):
        product_numer = int(numer[0])
        product_denom = int(denom[0])
        index = 1
        exit = 0
        while exit < (len(numer)- 1): 
            product_numer *= int(denom[index])
            product_denom *= int(numer[index])
            index += 1
            exit += 1
        divided_fraction = simplify(product_numer, product_denom)
        return divided_fraction
    print(divide(numerator, denominator))
