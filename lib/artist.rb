class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def self.all
    @@all
    end

  def initialize(name)
    @name = name
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

end
