# Artist has many Songs

class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end

  def song_count
    @@song_count
  end
end




  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += @songs.count
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += @songs.count
    song.artist = self
    song
  end
end
