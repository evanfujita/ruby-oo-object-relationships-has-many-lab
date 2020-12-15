require 'pry'
require_relative 'artist.rb'

class Song

    attr_reader 
    attr_accessor :song, :name, :artist

    @@all = [ ]

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all        
    end

    def artist_name
        if
        self.artist
        self.artist.name
        else
        return nil
        end
    
    end


end
#binding.pry
