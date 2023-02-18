counter = 0
numbers = []

while counter < 6
  puts "At the top counter is #{counter}"
  numbers.push(counter)

  counter +=1
  puts "Numbers now: ", numbers
  puts "At the bottom counter is #{counter}"
end

puts "The numbers: "
# remember we can write this in other two different ways

numbers.each{|number| puts number}

