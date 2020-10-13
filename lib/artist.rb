class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def self.all
    @@all
    end

end
