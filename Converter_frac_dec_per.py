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
                numer = float(numer / factor)
                denom = float(denom / factor)
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
            fraction = simplify(float(dec), 10 ** len(dec))
        return fraction

    elif str(user[index]) == "dec":
        handler_string = og[index]
        if handler_string.count("/") > 0:
            handler_string = handler_string.split("/")
            dec = float(handler_string[0]) / float(handler_string[1])
        else:
            handler_string = handler_string.replace("%", "")
            dec = float(handler_string) / 100
        return dec
    elif str(user[index]) == "per":
        handler_string = og[index]
        if handler_string.count("/") > 0:
            handler_string = handler_string.split("/")
            per = float(handler_string[0]) / float(handler_string[1]) * 100
        else:
            per = float(handler_string) * 100
        return (str(per) + "%")
'''
for index in range(len(og)):
    converted = convert(og, index, user)
    print(converted)
'''    
def test_convert():
    assert convert(['3/4', '50/60', '1256.2'], 0, ['per'])
    assert convert(['1/5', '50/60', '1256.2'], 2, ['frac', 'per', 'frac'])
    assert convert(['3/4', '50/60', '1256.2'], 1, ['dec', 'dec'])
    assert convert(['43%', '50/60', '1256.2'], 0, ['frac'])
    assert convert(['35%', '50/60', '1256.2'], 0, ['dec'])
    
test_convert()
