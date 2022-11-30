class CreateSong < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.float :runtime_in_minutes
      t.string :artist_name
      t.timestamps
    end
  end
end
