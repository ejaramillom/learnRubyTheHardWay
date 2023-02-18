def add(first, second)
  puts "adding #{first} + #{second}"
  return first + second
end

def substract(first, second)
  puts "substracting #{first} - #{second}"
  return first - second
end

def multiply(first, second)
  puts "Mutiplying #{first} * #{second}"
  return first * second
end

def divide(first, second)
  puts "we are going to divide #{first} / #{second}"
  return first / second
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = substract(78, 4)
weight = multiply(90, 2)
iq = divide(250, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

