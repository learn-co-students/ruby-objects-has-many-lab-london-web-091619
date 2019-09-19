class Post

    attr_accessor :author, :title

    def initialize(title)
        @title = title
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def author_name
        if self.author == nil
            return nil
        end
        return self.author.name
    end

end