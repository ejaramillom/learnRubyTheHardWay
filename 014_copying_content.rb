fromFile, toFile = ARGV

puts "Copying from #{fromFile} to #{toFile}"

#we could do these two on one line, how?

# inFile = open(fromFile)
# inData = inFile.read

inData = open(fromFile).read

puts "The input file is #{inData.length} bytes long"

puts "Does the output file exist? #{File.exist?(toFile)}"
puts "Ready, hit RETURN to continue, CTRL - C to abort."

$stdin.gets

outFile = open(toFile, 'w')
outFile.write(inData)

puts "Alright, all done."

outFile.close

# The important thing to learn from this script is the function File.exist?(to_file) on line 8. This can be broken down as, "File! I want you to use your exist? function to tell me if to_file exists on the disk." Yet another way to say this is, "Get the exist? function from File and call it with the variable to_file." You'll learn more about this later, but for now you should study how you can call functions inside File to do things with files.


