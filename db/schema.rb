# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_19_174655) do

  create_table "karaoke_singer_songs", force: :cascade do |t|
    t.integer "karaoke_singer_id"
    t.integer "songs_id"
    t.index ["karaoke_singer_id"], name: "index_karaoke_singer_songs_on_karaoke_singer_id"
    t.index ["songs_id"], name: "index_karaoke_singer_songs_on_songs_id"
  end

  create_table "karaoke_singers", force: :cascade do |t|
    t.string "name"
    t.string "number_of_drinks"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.integer "runtime_in_minutes"
    t.string "artist_name"
  end

end
