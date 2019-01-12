class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artist = []
  @@genre = []

  def iniitialize(name, song, genre)
    @name = name
    @artists = artist 
    @genres = genre
    @@count += 1
    @@artist << artist 
    @@genre << genre
  end 

  def self.count
    @@count
  end 
  
  def self.artist
    @@artist = @@artist.uniq
  end 
  
  def self.genre
    @@genre = @@genre.uniq
  end
  
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |genre|
      genre_count[genre]
  end
    @@genre_count
  end
  
   def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end
end
