class Author
  attr_reader :name

  @@all = []

  def self.post_count
    @@all.reduce(0) do |sum, author|
      sum + author.posts.count
    end
  end

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    Post.all.select { |post| post.author == self }
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end
end
