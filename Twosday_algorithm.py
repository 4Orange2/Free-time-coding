# This is an online twosday calculator
def generate():
    exit = 0
    string = ""
    while exit < 8:
        num = exit + 2
        string = string + str(exit + 1)
        result = (int(string) * 9 + num) * 2
        exit += 1
        print('the answer of ({} * 9 * {}) * 2 = {}'.format(string, num, result))
    return ""

print(generate())