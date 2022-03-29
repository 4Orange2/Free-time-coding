# This is a fractions, decimals, and percentage convertor
original = input("Input: ")
og = original.split(" ")
user = input("To what? ")

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

#for i in range(len(og)):
index = 0
if user == "frac":
    handler_string = og[index]
    if handler_string.count("%") > 0:
        handler_string = handler_string.replace("%", "")
        frac = float(handler_string)
        fraction = simplify(frac, 100)
    else:
        dec = float(og[index]) * 100
        fraction = simplify(dec, 100)
    print(fraction)
'''
    elif user == "dec":
        handler_string = og[index]
        if handler_string.count("/") > 0:
            handler_string.replace("/", "")
            dec = handler_string[0] / handler_string[1]
            
    elif user == "per":
'''        
