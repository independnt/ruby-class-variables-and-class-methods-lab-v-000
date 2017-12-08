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

  def self.genres
    gen = []
    @@genres.map {|g| gen << g unless gen.include?(g)}
    gen
  end

  def self.artists
    art = []
    @@artists.map {|a| art << a unless art.include?(a)}
    art
  end

  def self.genre_count

  end

end
