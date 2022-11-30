class KaraokeSinger < ActiveRecord::Base
    has_many :karaoke_singer_songs
    has_many :songs, through: :karaoke_singer_songs
end
