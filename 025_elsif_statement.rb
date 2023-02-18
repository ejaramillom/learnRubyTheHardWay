people = 30
cars = 40
trucks = 15

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't figure out what to do."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "maybe we could take the trucks."
else 
  puts "We still can't decide about this."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else 
  puts "Fine, let's stay home then."
end