class List

  attr_reader :songs

  def initialize
    @songs = []
  end

  def add_song(artist, duration, lyrics)
    songs << Song.new(artist, duration, lyrics)
  end

  def play_all(order=nil)
    if order == "shuffle"
      songs_to_play = songs.shuffle 
    else
      songs_to_play = songs
    end
    songs_to_play.each do |song|
      song.play
    end
  end

  def total_duration
    total_time = 0
    songs.each do |song|
      total_time += song.duration
      puts song.duration
    end
    total_time
  end




end