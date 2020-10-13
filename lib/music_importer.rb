class MusicImporter

  attr_accessor :path
  attr_reader :files

  def initialize(path)
    @path = path
    @files = []
    @files << self
  end

  def files
    @files
  end

end
