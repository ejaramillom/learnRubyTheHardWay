# create a mapping of state to abbreviation

states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New york' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# add some more cities

cities['NY'] = 'New york'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY state has: #{cities['NY']}"
puts "OR state has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is #{states['Michigan']}"
puts "Florida's abbr is #{states['Florida']}"

# do it by using the state then the city dictionary
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
puts '-' * 10
  states.each{|state, abbr| puts "#{state} is abbreviated #{abbr}" }

# puts every city in state
puts '-' * 10
  cities.each{|abbr, city| puts "#{abbr} is also named #{city}"}

# now do both at the same time
puts '-' * 10
states.each{|state, abbr| 
  city = cities[abbr]
  puts "#{state} is abbreviated #{abbr} and has a city #{city}"
}

puts '-'  * 10
# by default ruby says "nil"
state = states['Texas']

if !state
  puts "Sorry, no state like that!"
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state 'TX' is: #{city}"

# remember hashes dont have any specific order

# What is the difference between an array and a hash?
# An array is for an ordered array of items. A hash (or hash) is for matching some items (called "keys") to other items (called "values").
# What would I use a hash for?
# When you have to take one value and "look up" another value. In fact, you could call hashes "look up tables."
# What would I use an array for?
# Use an array for any sequence of things that need to be in order, and you only need to look them up by a numeric index.