# hashes and modules

# Imagine I have a module that I decide to name mystuff.rb and I put a function in it called apple. Here's the module mystuff.rb:

# None
# Once I have this code, I can use the module MyStuff with require and then access the apple function:

# require "./mystuff.rb"
# MyStuff.apple()
# I could also put a variable in it named tangerine:

module MyStuff
  def MyStuff.apple()
    puts "I AM APPLES!"
  end

  # this is just a variable
  TANGERINE = "Living reflection of a dream"
end

#I can access that the same way:# 

# require "./mystuff.rb"

# MyStuff.apple()
# puts MyStuff::TANGERINE
# Refer back to the hash, and you should start to see how this is similar to using a hash, but the syntax is different. Let's compare:

mystuff['apple'] # get apple from dict
MyStuff.apple() # get apple from the module
MyStuff::TANGERINE # same thing, it's just a variable

# Here's why classes are used instead of modules: You can take this MyStuff class and use it to craft many of them, millions at a time if you want, and each one won't interfere with each other. When you import a module there is only one for the entire program unless you do some monster hacks.

class YourStuff

  def initialize()
    @tangerine = "And now a thousand years between"
  end

  attr_reader :tangerine

  def apple()
    puts "I AM CLASY APPLES!"
  end

end

# In the MyStuff function initialize then use @tangerine which is telling Ruby, "I want the tangerine variable that is part of this object." Ruby uses operators like @ and $ to say where a variable is located. When you did $stdin you were saying, "the global stdin," because $ means global. When you do @tangerine you are saying, "the object's tangerine", because @ means "this object."

# different ways to summon information or objects from classes and modules

# dictionary style
mystuff['apples']

# module style
MyStuff.apples()
puts MyStuff::TANGERINE

# class style
thing = MyStuff.new()
thing.apples()
puts thing.tangerine


