filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}"
print txt.read 

print "Type the filename again: "
fileAgain = $stdin.gets.chomp

txtAgain = open(fileAgain)

print txtAgain.read

# File.open("file").each_line { |line| puts line }
# File.open opens a local file and returns a file object the file stays open until you call IO#close on it

# ---

# open("file").each_line { |line| puts line }
# Kernel.open looks at the string to decide what to do with it.

# open(".irbrc").class # => File
# open("http://google.com/").class # => StringIO
# File.open("http://google.com/") # => Errno::ENOENT: No such file or directory - http://google.com/

# In the second case the StringIO object returned by Kernel#open actually holds the content of http://google.com/. If Kernel#open returns a File object, it stays open untill you call IO#close on it.

# IO.foreach("file") { |line| puts line }
# IO.foreach opens a file, calls the given block for each line it reads, and closes the file afterwards.
# You don't have to worry about closing the file.
# File.read("file").each { |line| puts line }
# You didn't mention this choice, but this is the one I would use in most cases.

# File.read reads a file completely and returns it as a string.
# You don't have to worry about closing the file.
# In comparison to IO.foreach this makes it clear, that you are dealing with a file.
# The memory complexity for this is O(n). If you know you are dealing with a small file, this is no drawback. But if it can be a big file and you know your memory complexity can be smaller than O(n), don't use this choice.
# It fails in this situation:

 # s= File.read("/dev/zero") # => never terminates
 # s.each …

# ri
# ri is a tool which shows you the ruby documentation. You use it like this on your shell.

# ri File.open
# ri open
# ri IO.foreach
# ri File#each_line
# With this you can find almost everything I wrote here and much more.


# O(n)	
# linear	
# Finding an item in an unsorted list or in an unsorted array; adding two n-bit integers by ripple carry