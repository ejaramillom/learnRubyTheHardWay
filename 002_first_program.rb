puts "i will now count my chickens:"
puts "hens #{25 + 30 / 6} "
puts "Roosters #{100 - 25 * 3 % 4}"
puts "now i will count the eggs:"
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
puts "is it true that 3 + 2 < 5 - 7"
puts 3 + 2 < 5 - 7
puts "what is 3 + 2? #{3 + 2}"
puts "what is 5 - 7? #{5 - 7}"
puts "oh, that's why is false."

# Now that you are using $stdin.gets.chomp (see #3) you can add ARGV to your script to get something from the user. Don't over think this. Just use ARGV to get one thing, then $stdin.gets.chomp to get something else.

# What is the order of operations?
# In the United States we use an acronym called PEMDAS which stands for Parentheses Exponents Multiplication Division Addition Subtraction. That's the order Ruby follows as well. The mistake people make with PEMDAS is to think this is a strict order, as in "Do P, then E, then M, then D, then A, then S." The actual order is you do the multiplication and division (M&D) in one step, from left to right, then you do the addition and subtraction in one step from left to right. So, you could rewrite PEMDAS as PE(M&D)(A&S).


