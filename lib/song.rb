class Song 
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
  @name = name
  @@all << self
  end
  
  def self.new_by_filename(name)
    song_name = name.split(" - ")[1]
    song_artist = name.split(" - ")[0]
    
    song = Song.new(song_name)
    song.artist_name=(song_artist)
    song
  end

    def artist_name=(artist)
    #puts artist
    artist = Artist.find_or_create_by_name(artist)
    artist.add_song(self)
  end

  def Song.all
     @@all 
  end

end  