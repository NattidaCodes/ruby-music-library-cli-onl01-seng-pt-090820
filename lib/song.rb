class Song

  attr_accessor :name
  attr_reader :artist, :genre

  @@all = []

  def self.all
    @@all
    end
    
end