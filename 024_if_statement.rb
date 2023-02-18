people = 32
cats = 30
dogs = 31

if people < cats
  puts "Too many cats! the world is doomed."
end

if people > cats
  puts "Not many cats! the world is saved."
end

if people < dogs
  puts "The world is drooled!"
end

if people > dogs
  puts "The world is dry"
end

dogs += 5 

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end

if people == dogs
  puts "People are dogs!"
end