# What is <<END called?
# That is called a "heredoc" or "here document". It is used to create a multi-line string, and you use it by starting with << and an all caps word, in this case END. Ruby then reads everything into a string until it sees another END. You can use any word, not just END, so if your string has the word "END" in it, you would use something different like <<BIGDOC and end with BIGDOC. The last thing is the string includes all the indentation.

puts "let's practice everything"
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs'

#the end below is a "heredoc".

poem = <<END 
\tThe lovely world with logic so firmly planted cannot discern \n the needs of love nor comprehend passion from intuition and requires an explanation \n\t where there is none. 
END

puts "-------"
puts poem 
puts "-----"

five = 10 - 2 + 3 - 6
puts "this should be #{five}"

def secretFormula(started)
  jellyBeans = started * 500
  jars = jellyBeans / 1000
  crates = jars / 1000
  return jellyBeans, jars, crates
end 

startPoint = 1000
beans, jars, crates = secretFormula(startPoint)

puts "With a starting point of: #{startPoint}"
puts "We'd have #{beans} beans, #{jars} jars and #{crates} number of crates"

startPoint /= 10
puts 'We can also do that this way:
  We\'d have %s beans, %s jars and %s crates.' % secretFormula(startPoint)



