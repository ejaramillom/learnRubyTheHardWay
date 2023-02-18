module Ex25

  # this function will break up words for us
  def Ex25.breakWords(thisPhrase)
    words = thisPhrase.split(' ')
    return words
  end

  # Here we sort the words of the phrase
  def Ex25.sortWords
    return words.sort
  end

  # this prints the first word of the array
  def Ex25.printFirstWord
    word = words.shift
    puts word
  end

  # this removes the las element of the array and returns
  def Ex25.printLastWord
    word = words.pop
    puts word
  end

  # takes the full sentence and sort the words
  def Ex25.sortSentence(sentence)
    words = Ext25.breakWords(sentence)
    return Ex25.sortWords(words)
  end

  # prints the first and last words of the sentence
  def Ex25.printFirstAndLast(sentence)
    words = Ex25.breakWords(sentence)
    Ex25.printFirstWord(words)
    Ex25.printLastWords(words)
  end

  # Sorts the words then prints the first and last one
  def Ex25.printFirstAndLastSorted(sentence)
    words = Ex25.sortSentence(sentence)
    Ex25.printFirstWord
    Ex25.printLastWord
  end

end
