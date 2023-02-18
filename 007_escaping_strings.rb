puts "i am 6'2\""
puts 'i am 6\'2"' #here changes quotes for double quotes
tabbyCat = "\tI'm tabbed in."
persianCat = "I'm split\non a line"
backslashCat = "I'm \\ a \\ cat"

fatCat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabbyCat
puts persianCat
puts backslashCat
puts fatCat

# Escape	What it does.
# \\	Backslash ()
# \'	Single-quote (')
# \"	Double-quote (")
# \a	ASCII bell (BEL)
# \b	ASCII backspace (BS)
# \f	ASCII formfeed (FF)
# \n	ASCII linefeed (LF)
# \r	ASCII Carriage Return (CR)
# \t	ASCII Horizontal Tab (TAB)
# \uxxxx	Character with 16-bit hex value xxxx (Unicode only)
# \v	ASCII vertical tab (VT)
# \ooo	Character with octal value ooo
# \xhh	Character with hex value hh