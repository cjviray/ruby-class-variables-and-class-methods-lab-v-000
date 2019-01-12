class Song
  
  attr_accessor :name, :song, :genre
  
  @@count = 0
  @@artist = []
  @@genre = []

  def iniitialize(name, song, genre)
    @name = name
    @song = song 
    @genre = genre
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
    @@genres.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
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
