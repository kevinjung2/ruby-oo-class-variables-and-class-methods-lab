require 'pry'

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@artists << artist
    @@genres << genre
    @@artist_count.keys.include?(artist) ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
    @@genre_count.keys.include?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artist_count.keys
  end

  def self.genres
    @@genre_count.keys
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
