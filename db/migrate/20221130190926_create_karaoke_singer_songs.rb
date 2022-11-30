class CreateKaraokeSingerSongs < ActiveRecord::Migration[5.2]
  # this is my join table!
  def change
    create_table :karaoke_singer_songs do |t|
      t.integer :karaoke_singer_id
      t.integer :song_id
      t.timestamps
    end
  end
end
