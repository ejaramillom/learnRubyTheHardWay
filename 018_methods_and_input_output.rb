inputFile = ARGV.first

def printAll(fileName)
  puts fileName.read
end

def rewind(fileName)
  fileName.seek(0)
end

def printALine(lineCount, fileName)
  puts "#{lineCount}, #{fileName.gets.chomp}"
end

currentFile = open(inputFile)

puts "First let's print the hole file: \n"

printAll(currentFile)

puts "Now let's rewind, kind of like a tape"

rewind(currentFile)

puts "Let's print three lines: "

currentLine = 1
printALine(currentLine, currentFile)

currentLine = currentLine + 1
printALine(currentLine, currentFile)

currentLine = currentLine + 1
printALine(currentLine, currentFile)

# =	Simple assignment operator, assigns values from right side operands to left side operand.	c = a + b will assign the value of a + b into c
# +=	Add AND assignment operator, adds right operand to the left operand and assign the result to left operand.	c += a is equivalent to c = c + a
# -=	Subtract AND assignment operator, subtracts right operand from the left operand and assign the result to left operand.	c -= a is equivalent to c = c - a
# *=	Multiply AND assignment operator, multiplies right operand with the left operand and assign the result to left operand.	c *= a is equivalent to c = c * a
# /=	Divide AND assignment operator, divides left operand with the right operand and assign the result to left operand.	c /= a is equivalent to c = c / a
# %=	Modulus AND assignment operator, takes modulus using two operands and assign the result to left operand.	c %= a is equivalent to c = c % a
# **=	Exponent AND assignment operator, performs exponential (power) calculation on operators and assign value to the left operand.	c **= a is equivalent to c = c ** a