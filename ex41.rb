require 'open-uri'
# open uri is a wrapper to use net::https use

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
  "class ### < ###\nend" =>
    "Make a class named ### that is-a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend" =>
    "class ### has-a initialize that takes @@@ parameters.",
  "class ###\n\tdef ***(@@@)\n\tend\nend" =>
    "class ### has-a function named *** that takes @@@ parameters.",
  "*** = ###.new()" =>
    "Set *** to an instance of class ###.",
  "***.***(@@@)" =>
    "From *** get the *** function, and call it with parameters @@@. ",
  "***.*** = '***'" =>
    "From *** get the *** atrribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == "english"

# Ruby maintains an array called ARGV with the values passed on the command line. We can access the elements of this array, just as any other array:

# ARGV[0] is going to be the first value after the name of the script.

open(WORD_URL) { |f|
  f.each_line {|word| WORDS.push(word.chomp)}
}
# each line cuts the string using the separator we choose to pass to the function, by default is $/ separator

def craftNames(randWords, snippet, pattern, caps=false)
  names = snippet.scan(pattern).map do
    word = randWords.pop()
    caps ? word.capitalize : word
  end

  return names * 2
end

def craftParams(randWords, snippet, pattern)
  names = (0...snippet.scan(pattern).length).map do
    paramCount = rand(3) + 1
    params = (0...paramCount).map {|x| randWords.pop()}
    params.join(', ')
  end

  return names * 2
end

def convert(snippet, phrase)
  randWords = WORDS.sort_by{rand}
  classNames = craftNames(randWords, snippet, /###/, caps=true)
  otherNames = craftNames(randWords, snippet, /\*\*\*/)
  paramNames = craftParams(randWords, snippet, /@@@/)

  results = []
  
  [snippet, phrase].each {|sentence|
    # fake class names, also copies sentence
    result = sentence.gsub(/###/){|x| classNames.pop}

    # fake other names
    result.gsub!(/\*\*\*/){|x| otherNames.pop}

    # fake parameters list
    # gsub! is a String class method in Ruby which is used to return a copy of the given string with all occurrences of pattern substituted for the second argument. If no substitutions were performed, then it will return nil. If no block and no replacement is given, an enumerator is returned instead.
    result.gsub!(/@@@/){|x| paramNames.pop}
    
    results.push(result)
  }

  return results
end

loop do
  snippets = PHRASES.keys().sort_by {rand}

  for snippet in snippets
    phrase = PHRASES[snippet]
    question, answer = convert(snippet, phrase)

    if PHRASE_FIRST
      question, answer = answer, question
    end

    print question, "\n\n> "

    exit(0) unless $stdin.gets

    puts "\nANSWER: %s\n\n" % answer

  end
end