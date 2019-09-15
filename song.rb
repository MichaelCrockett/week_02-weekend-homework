class Song

  attr_reader :lyrics, :title, :duration, :artist

  def initialize(lyrics, title, duration, type)
    @lyrics = lyrics
    @title = title
    @duration = duration
    @type = type
  end
end #class end
