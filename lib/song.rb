# Song belongs to an Artist
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def artist_name
    self.artist.name
  end


end
