class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []

  def iniitialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@count += 1
    @@artists << artist 
    @@genres << genre
  end 

  def self.count
    @@count
  end 
  
  def self.artists
    @@artists = @@artists.uniq
  end 
  
  def self.genres
    @@genres = @@genres.uniq
  end
  
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |genre|
      genre_count[genre] += 1
  end
    @@genre_count
  end
  
   def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |artist|
      artists_count[artists] += 1
    end
    @@artist_count
  end
end
