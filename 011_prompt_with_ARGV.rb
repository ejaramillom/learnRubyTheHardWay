userName = ARGV.first # gets the first Argument

prompt = ">"

puts "Hi #{userName}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{userName}?"
puts prompt
likes = $stdin.gets.chomp

puts "Where do you live #{userName}? "
puts prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice

puts "What kind of computer do you have #{userName}? ", prompt
computer = $stdin.gets.chomp

puts "
Alright, so you said #{likes} about liking me,
you live in #{lives}. Not sure where that is.
And you have a #{computer} computer.
Nice.
"


