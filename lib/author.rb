# Author has many Posts
class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += @posts.count
    post.artist = self
  end

  def add_post_by_name(name)
    post = Post.new(name)
    @posts << post
    @@post_count += @posts.count
    post.author = self
    post
  end
end
