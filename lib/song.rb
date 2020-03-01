class Song 
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
  @name = name
  @@all << self
  end
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]
    song = self.new(song_name)
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end

  def Song.all
     @@all 
  end

end  