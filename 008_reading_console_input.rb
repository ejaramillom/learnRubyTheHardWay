puts "how old are you? "
age = gets.chomp
puts "How tall are you? "
height = gets.chomp
puts "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age}, #{height} tall and #{weight} and ugly. "

# The #{name} thing is called string interpolation
# chomp erases the \n at the end of the sentences when information is gathered from the user
# chop removes last character
# strip removes white spaces