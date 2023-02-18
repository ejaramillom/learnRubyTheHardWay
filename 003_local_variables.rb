cars = 100
spacesInACar = 4.0
drivers = 30  
passengers = 90
carsNotDriven = cars - drivers
carsDriven = drivers
carpoolCapacity = carsDriven * spacesInACar
avgPassengersPerCar = passengers / carsDriven

puts "there are #{cars} cars available"
puts "there are only #{drivers} drivers available"
puts "there will be #{carsNotDriven} empty cars today"


