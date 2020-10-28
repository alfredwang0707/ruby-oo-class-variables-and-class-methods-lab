require "pry"
class Song 
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    #the ones with "s" is a list
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres <<genre
        @@count += 1 
    end    

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
    #Song.genre_count
     # => {"rap" => 5, "rock" => 1, "country" => 3} 
    #{"pop" => 1, "rap" => 2}
    def self.genre_count
        genre_count=Hash.new(0)
        @@genres.each do |genre|
            if genre_count[genre] 
                #if inside this list there is this genre, add1
               genre_count[genre] +=1
            else
                genre_count[genre] = 1
                #if not,create and become the first 1
            end
        end
        genre_count
    end

    
    def self.artist_count
    #{"Brittany Spears" => 1, "Jay-Z" => 2}
        artist_count=Hash.new(0)
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1 
            else
                artist_count[artist] = 1
            end
        end
        artist_count    
    end





    

    
        

end
