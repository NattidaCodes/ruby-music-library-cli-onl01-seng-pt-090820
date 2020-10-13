class Song

  attr_accessor :name
  attr_reader :artist, :genre

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

    def self.create
    end

end
