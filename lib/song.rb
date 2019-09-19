class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist.nil?
      return nil
    else
       return self.artist.name
    end
  end



end
