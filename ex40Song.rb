class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def singMeASong()
    @lyrics.each{|line| puts line }
  end
end

happyBday = Song.new(["Happy bday to you", 
            "i don't want to get sued", 
            "So i'll stop right there in the song"])

bullsOnParade = Song.new(["They rally around the famiy",
                "With pockets full of shells"])

happyBday.singMeASong()

bullsOnParade.singMeASong()
