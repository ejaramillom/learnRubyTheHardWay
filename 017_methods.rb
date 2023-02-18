def cheeseAndCrackers(cheeseCount, boxesOfCrackers)
  puts "You have #{cheeseCount} cheeses!"
  puts "And also #{boxesOfCrackers} boxes of crackers"
  puts "Man, that's enough for a party"
  puts "Get a blanket. \n"
end

puts "We can just give the function numbers directly:"
cheeseAndCrackers(20, 30)


puts "OR, we can use variables from our script:"
amountOfCheese = 10
amountOfCrackers = 50

cheeseAndCrackers(amountOfCheese, amountOfCrackers)


puts "We can even do math inside too:"
cheeseAndCrackers(10 + 20, 5 + 6)


puts "And we can combine the two, variables and math:"

cheeseAndCrackers(amountOfCheese + 100, amountOfCrackers + 1000)