require 'pry'
require_relative 'song.rb'

class Artist
    
    attr_accessor :name
    attr_reader 
    
    @@all_artists = [ ]

    def initialize(name)
        @name = name
        @@all_artists << self
    end

    def add_song(song)
        song.artist = self
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(song)
        song = Song.new(song)
        add_song(song)
    end

    def self.all
        @@all_artists
    end

    def self.song_count
        count = self.all.collect {|artist| artist.songs.count }
        count.sum
    end

end

