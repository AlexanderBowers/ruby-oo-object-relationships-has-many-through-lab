class Artist
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def new_song(song, genre)
        song = Song.new(song, self, genre)
    end
    
    def songs
        Song.all.select {|songs| songs.artist == self }
    end

    def genres
        genre = []
        self.songs.select{|song| genre << song.genre}
        genre.uniq
    end

end
