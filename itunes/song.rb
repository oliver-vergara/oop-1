class Song
  attr_reader :artist, :duration, :lyrics

  def initialize(artist, duration, lyrics)
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end

  def play
    `say #{@lyrics}`
  end

  def friendly_duration
    puts "#{@duration / 60} minutes and #{@duration % 60} seconds."
  end

end