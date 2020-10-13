class Song
  extend Concerns::Findable

  attr_accessor :name
  attr_reader :artist, :genre

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(song_name)
    new_song = self.new(song_name)
    new_song.save
    new_song
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
    # if genre.songs.include?(self)
    #   genre.songs << self
    # end
  end
  #
  # def self.find_by_name(name)
  #   @@all.find{|song| song.name == name}
  # end
  #
  # def self.find_or_create_by_name(name)
  #   self.find_by_name(name) || self.create(name)
  # end

  def self.new_from_filename(filename)
    song_name = filename.split(" - ")[1]
    song = self.find_or_create_by_name(song_name)
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.genre = Genre.find_or_create_by_name(filename.split(" - ")[2].gsub(".mp3", ""))
    song
  end 

  # def self.create_from_filename(filename)
  #   self.create(filename)
  # end


end
