class Song

    attr_accessor :artist, :name
    #initialize the relevant classes

    @@all = [ ]
    #a class variable to push all new song instances into

    def initialize(song)
        @name= song
        @@all << self
    end
    #initialize the name/title of a song, as well as push the new elements into the global/ class variable array.

    def self.all
        @@all
    end
    #using a SELF for the current songs, return an array full of the songs.

    def artist_name
       
        if self.artist == nil
            return nil 
        else return self.artist.name
        end
    end
    #if the current, instance, song, SELF  artist name and is empty, return nothing. Other wise return the current songs artist.
end 

