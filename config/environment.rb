require 'bundler'
Bundler.require

module Concerns
  module Findable

    def find_by_name(name)
      all.find{|song| song.name == name}
    end

    def find_or_create_by_name(name)
      all.find_by_name(name) || all.create(name)
    end

  end
end

require_all 'lib'
