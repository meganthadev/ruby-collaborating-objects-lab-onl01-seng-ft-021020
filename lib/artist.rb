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
    self.all.find { |artist| artist.name == name }
    self.all.find {|artist| artist.name == name}
  else
      Artist.new(name)
  end 
       
  
  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  
  def self.add_song_by_name(song_name)
    artist_name = Artist.new(name)
    artist_name
  end

  def print_songs
    @songs.each do |song|
      puts song.name
   end
 end
 
 def self.all
    @@all
  end

  def songs
     @songs 
  end
  
  def self.song_count
    Song.all
  end  
  

end 