class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

  def add_song(song)
    song.artist = self 
  end
  
  def add_song_by_name(song_name)
    artist = Song.new(song_name)
    add_song(artist)
  end

  def print_songs
    @songs
  end

  def songs
     @songs 
  end
  
  def self.song_count
    Song.all
  end  
  
end 