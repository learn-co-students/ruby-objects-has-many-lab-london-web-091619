class Author

attr_accessor :name, :post


def initialize(name)
    @name = name
end

def posts
 Post.all.select { |post| post.author == self}
end

def add_post(post)
    #takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
    post.author = self
end

def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
end

def self.post_count
Post.all.length
end

end 