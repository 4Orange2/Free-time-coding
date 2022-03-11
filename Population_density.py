# this is a population density calculator
exit = 0
population = list(input("Populations (separated with space): ").split(" "))
area = list(input("Areas (separated with space): ").split(" "))
index = 0
while exit < len(area):
    country_population = int(population[index])
    country_area = int(area[index])
    density = country_population / country_area
    print(density)
    index += 1
    exit += 1
