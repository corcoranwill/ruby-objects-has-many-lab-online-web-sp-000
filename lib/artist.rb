# Artist has many Songs

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end

  def song_count
    Song.all.count
  end
end



  def song_count
    Song.all.select {|song| song.artist == self}
  end
