class CreateKaraokeSingerSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :karaoke_singer_songs do |t|
      t.references :karaoke_singer
      t.references :songs 
    end
  end
end
