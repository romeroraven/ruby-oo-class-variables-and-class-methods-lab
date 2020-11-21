class Song
    attr_accessor :name, :artist, :genre
     @@count = 0
     @@artists = []
     @@genres = []
     
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end
    
    def self.count
        @@count
    end
    
    def self.artists
         @@artists.uniq!
        end
        
        def self.genres
             @@genres.uniq!
             end
    def self.genre_count
        count_attributes(@@genres)
    end
    
    def self.artist_count
      count_attributes(@@artists)
    end
    
    def self.count_attributes(list)
      attributes = {}
      list.uniq.each do |genre|
        attributes[genre] = list.count(genre)
      end
      attributes
    end
end


