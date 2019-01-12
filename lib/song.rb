class Song
  
  attr_accessor :name, :artists, :genres
  
  @@count = 0
  @@artist = []
  @@genre = []

  def iniitialize(name, artists, genres)
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
