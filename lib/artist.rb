class Artist
    attr_accessor :name, :songs, :add_song, :add_song_by_name, :song_count

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        # @songs
        Song.all.select {|song| song.artist == self}
    end
    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end
    def self.song_count
        Song.all.count
    end
end

