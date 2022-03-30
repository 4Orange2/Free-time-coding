# This is a fractions, decimals, and percentage convertor
original = input("Input: ")
og = original.split(" ")
user = (input("To what? ").split(" "))

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

for index in range(len(og)):
    if str(user[index]) == "frac":
        handler_string = og[index]
        if handler_string.count("%") > 0:
            handler_string = handler_string.replace("%", "")
            frac = float(handler_string)
            fraction = simplify(frac, 100)
        else:
            dec = float(og[index]) * 100
            fraction = simplify(dec, 100)
        print(fraction)

    elif str(user[index]) == "dec":
        handler_string = og[index]
        if handler_string.count("/") > 0:
            handler_string.replace("/", "")
            dec = handler_string[index] / handler_string[index + 1]
        else:
            handler_string = handler_string.replace("%", "")
            dec = handler_string[index] / handler_string[index + 1]
        print(dec)
    elif str(user[index]) == "per":
        handler_string = og[index]
        if handler_string.count("/") > 0:
            handler_string = handler_string.replace("/", "")
            per = (handler_string[index] / handler_string[index + 1]) * 100
        else:
            per = (handler_string[index] / handler_string[index + 1]) * 100
        print(str(per) + "%")
