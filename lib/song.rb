class Song
    attr_accessor :name, :new, :all, :artist, :artist_name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end

    def artist_name
        self.artist.name if artist 
    end
end