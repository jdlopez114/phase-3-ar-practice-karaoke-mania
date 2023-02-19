class CreateKaraokeSingers < ActiveRecord::Migration[5.2]
  def change
    create_table :karaoke_singers do |t|
      t.string :name 
      t.string :number_of_drinks 
    end
  end
end