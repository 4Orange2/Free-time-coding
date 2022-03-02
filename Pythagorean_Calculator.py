from math import sqrt

def pythagorean (calc):
    if calc == "h":
        leg_1 = float(input("Leg 1: "))
        leg_2 = float(input("Leg 2: "))
        hypot = sqrt(leg_1 ** 2 + leg_2 ** 2)
        return hypot
    elif calc == "l":
        hypot = float(input("Hypotenous: "))
        leg = float(input("Leg: "))
        leg = sqrt(hypot ** 2 - leg ** 2)
        return leg
print("This is a pythagorean theorem calculator")
print("---")
times = int(input("How many times do you want to do this? "))
num = 0

while num < times:
    side = input("What do you want to calculate? ")
    print(pythagorean(side))
    print("---")
    num += 1