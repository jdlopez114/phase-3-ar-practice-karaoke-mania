class KaraokeSinger < ActiveRecord::Base
    has_many :karaoke_singer_songs
    has_many :songs, through: :karaoke_singer_songs

    def sing(song)
        # KaraokeSinger.update(songs_id: song)
        self.karaoke_singer_songs.create(song: song)
    end


    def buy_drink
        # self.number_of_drinks =+ 1 
        self.update(number_of_drinks: self.number_of_drinks + 1)
    end


    def songs_by_artist(artist)
        # Song.all.find_by(artist_name: artist)
        # Song.all.where("artist_name = ?", artist_name) -->> use self because we are looking for the songs sang by the instance of the karaoke singer
        self.songs.where("artist_name = ?", artist_name)
    end


    def drinks_tab(price_per_drink)
        self.number_of_drinks * price_per_drink
    end


    def self.total_tab(price_per_drink)
        self.all.sum { |singer| singer.drinks_tab(price_per_drink) }
    end

end
