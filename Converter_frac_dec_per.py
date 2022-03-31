# This is a fractions, decimals, and percentage convertor
# Remember to put "frac", "dec", or "per"
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

def convert(og, index, user):
    if str(user[index]) == "frac":
        handler_string = og[index]
        if handler_string.count("%") > 0:
            handler_string = handler_string.replace("%", "")
            frac = float(handler_string)
            fraction = simplify(frac, 100)
        else:
            dec = handler_string[handler_string.index(".") + 1:]
            fraction = simplify(int(dec), 10 ** len(dec))
        return fraction

    elif str(user[index]) == "dec":
        handler_string = og[index]
        if handler_string.count("/") > 0:
            handler_string = handler_string.split("/")
            dec = int(handler_string[0]) / int(handler_string[1])
        else:
            handler_string = handler_string.replace("%", "")
            dec = int(handler_string[:2]) / 100
        return dec
    elif str(user[index]) == "per":
        handler_string = og[index]
        if handler_string.count("/") > 0:
            handler_string = handler_string.replace("/", "")
            per = int(handler_string[0]) / int(handler_string[1]) * 100
        else:
            per = int(handler_string[:2]) * 100
        return (str(per) + "%")

for index in range(len(og)):
    converted = convert(og, index, user)
    print(converted)
