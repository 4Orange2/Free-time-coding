# this is a fraction calculator
denominator = list(input("Denominators: ").split(" "))
#numerator = list(input("Numerators: ").split(" "))
print(denominator)
#print(numerator)

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
            multiple % int(denom[index + 1])) == 0
        print("this is the new number: " + denom[index + 1])
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

print(get_lcm(denominator))
