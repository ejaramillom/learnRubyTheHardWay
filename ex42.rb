# Exercise 42: Is-A, Has-A, Objects, and Classes
# An important concept that you have to understand is the difference between a class and an object. The problem is, there is no real "difference" between a class and an object. They are actually the same thing at different points in time. I will demonstrate by a Zen koan:

# What is the difference between a fish and a salmon?
# Did that question sort of confuse you? Really sit down and think about it for a minute. I mean, a fish and a salmon are different but, wait, they are the same thing, right? A salmon is a kind of fish, so I mean it's not different. But at the same time, a salmon is a particular type of fish so it's actually different from all other fish. That's what makes it a salmon and not a halibut. So a salmon and a fish are the same but different. Weird.

# Animal is-an object, look at the extra credit

class Animal
end

# dog is-an animal 
class Dog < Animal
  def initialize(name)
    @name = name
  end
end

# cat is-an animal
class Cat < Animal
  def initialize(name)
    # cat has-a name
    @name = name
  end
end

class Person
 
  def initialize(name)
    # person has-a name
    @name = name
    # person has-a pet of some kind
    @pet = nil

    attr_accesor :pet
end

# Employee is-a person
class Employee < Person
  def initialize(name, salary)
    # It calls a method on the parent class with the same name as the method that calls super. Meaning it calls "name" method in "Person" class
    super(name)
    # employee has-a salary
    @salary = salary
  end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new("Rover")
satan = Cat.new("Satan")
mary = Person.new("Mary")
mary.pet = satan
frank = Employee.new("Frank", 12000)
frank.pet = rover
flipper = Fish.new()
crouse = Salmon.new()
harry = Halibut.new()


