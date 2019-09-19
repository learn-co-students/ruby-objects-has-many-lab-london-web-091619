class Artist

attr_accessor :name, :song
#Include the new initialization arguments as well as the symbols that represent classes!
    
    def initialize(name)
    @name = name
    end
#Initialize the new artist's name within an instance variable.
#include the name argument within the attribute accessor !
    
    def songs
    Song.all.select {|song| song.artist == self}
    end
 #Select and collect ALL songs that are currently equal to the SELF artist.

    def add_song(song)
        song.artist = self
    end
#Takes a given song and assigns it to the current SELF instance / artist.

   
   def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    end 
#take the name of a song and declare it as a new song, then push the song to the relevant artist using a method


   def self.song_count
    Song.all.length
    end
# Using SELF for the given artist, get into the song class to take all songs to check the length, quantity of those elements.

    end 
