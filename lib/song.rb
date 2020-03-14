# Song belongs to an Artist
class Song
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end


end
