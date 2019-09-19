class Post
  attr_accessor :author
  attr_reader :title

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    return nil unless author

    author.name
  end
end
