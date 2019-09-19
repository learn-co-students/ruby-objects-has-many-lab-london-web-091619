class Song

    attr_accessor :artist, :name

    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def artist_name
        if self.artist == nil
            return nil
        end
        return self.artist.name
    end


end