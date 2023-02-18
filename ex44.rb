# most of the inheritances problems can be solved using composition. Avoid using inheritance.
# This is basically a funny way to say that I'm going to teach you something you should use carefully called inheritance. Programmers who are currently in the forest battling the Queen will probably tell you that you have to go in. They say this because they need your help since what they've created is probably too much for them to handle. But you should always remember this.

# implicit inheritance ------------------------------

class Parent
  def implicit()
    puts "PARENT implicit()"
  end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

# explicit override inheritance ------------------------

class Parent
  def override()
    puts "PARENT override()"
  end
end

class Child < Parent
  def override()
    puts "CHILD override()"
  end
end

dad = Parent.new()
son = Child.new()

dad.override()
son.override()

# alter before or after ------------------------------

class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, before PARENT altered()"
    super()
    puts "CHILD, after PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()

# composition ------------------------------

class Other
  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child
  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit
  end

  def override()
    puts "CHILD override"
  end

  def altered()
    puts "CHILD, before OTHER altered()"
    @other.altered()
    puts "CHILD, after OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

# modules and mixins

module Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()


