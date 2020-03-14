#Post belongs to an Author
class Post
  attr_accessor :name, :author

  def initialize(name)
    @name = name
  end

  def artist_name
    if @artist == nil
      nil
    else
      self.artist.name
    end
  end
end
