theCount = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loops goes through a list
# in a more traditional style found in other languages

for number in theCount
  puts "This is count #{number}"
end

# same as above, but in a more ruby style
# this and the next one are the preferred
# way ruby for-loops are written

fruits.each do |fruit|
  puts "A fruit of type #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but in a different syntax (way to write it)

change.each{|element| puts "I got #{element} as change"}

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |object|
  puts "Adding the object #{object} to the list"
  elements.push(object)
end

# now we can print them out too
elements.each{|element| puts "Element was: #{element}"}

# range operator
# (1..5)        #==> 1, 2, 3, 4, 5
# (1...5)       #==> 1, 2, 3, 4
# ('a'..'d')    #==> 'a', 'b', 'c', 'd'

# How do you make a 2-dimensional (2D) array?
# That's an array in an array like this: [[1,2,3],[4,5,6]]