# JOIN TABLE
class KaraokeSingerSong < ActiveRecord::Base
    belongs_to :song 
    belongs_to :karaoke_singer
end