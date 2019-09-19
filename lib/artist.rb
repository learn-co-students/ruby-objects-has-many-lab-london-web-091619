class Artist
  attr_reader :name

  @@all = []

  def self.song_count
    @@all.reduce(0) do |sum, artist|
      sum + artist.songs.count
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
end
