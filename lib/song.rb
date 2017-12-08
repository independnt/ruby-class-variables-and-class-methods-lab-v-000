require "pry"
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genre
    @@genres.map {|g| g unless include?(g)}
  end

  def self.artists
    artists = []
    @@artists.map {|a| artists << a unless artists include?(a)}
  end

  def self.genre_count

  end

end
