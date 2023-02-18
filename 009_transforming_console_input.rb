print "Give me a number: "
number = gets.chomp.to_f

bigger = number * 10
puts "a bigger number is #{bigger}. "

print "Give me another number: " 
another = gets.chomp
number = another.to_i

smaller = number / 4
puts "A smaller number is #{smaller}"




