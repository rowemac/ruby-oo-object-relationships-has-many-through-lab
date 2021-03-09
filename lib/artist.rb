require 'pry'

class Artist

    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @genre = genre
        @@all << self
    end 

    def self.all
        @@all
    end

    def songs
        Song.all.select { | song | song.artist == self }
    end 

    def new_song(song_name, genre)
        Song.new(song_name, self, genre)
    end 

    def genres
        Song.all.map { | song | song.genre }
    end 

end 


