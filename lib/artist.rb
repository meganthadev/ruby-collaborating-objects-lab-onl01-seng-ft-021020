class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song 
  end
  
  def self.find_or_create_by_name(name)
    @@all.find do |artist|
      if artist.name == name
        artist 
      else
       new_artist = self.new(name) 
      end
    end
  end
  
  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  
  def add_song_by_name(song_name)
    artist = Song.new(song_name)
    add_song(artist)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
   end
 end

  def songs
     @songs 
  end
  
  def self.song_count
    Song.all
  end  
  
  def self.all
    @@all
  end
  
  
end 