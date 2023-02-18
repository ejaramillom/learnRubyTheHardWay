# this one is like the script with ARGV

# You can use a splat in a method definition to gather up any remaining arguments:

# def say(what, *people)
  # people.each{|person| puts "#{person}: #{what}"}
# end
 
# say "Hello!", "Alice", "Bob", "Carl"
# Alice: Hello!
# Bob: Hello!
# Carl: Hello!
# In the example above, what will get the first argument, then *people will capture however many other arguments you pass into say

def printTwo(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# splat operator makes no sense before, so...

def printTwoAgain(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this takes just one argument

def printOne(arg1)
  print "arg1: #{arg1} \n"  
end 

# this one takes no argument

def printNone()
  print "Sorry, have nothin' here "
end

printTwo("No one", "here")
printTwoAgain("Michael", "Myers")
printOne("First!")
printNone()



