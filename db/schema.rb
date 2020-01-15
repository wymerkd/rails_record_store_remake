# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_15_003303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_artists", force: :cascade do |t|
    t.bigint "artist_id"
    t.bigint "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_album_artists_on_album_id"
    t.index ["artist_id"], name: "index_album_artists_on_artist_id"
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
  end

  create_table "albums_artists", id: false, force: :cascade do |t|
    t.bigint "artist_id"
    t.bigint "album_id"
    t.index ["album_id"], name: "index_albums_artists_on_album_id"
    t.index ["artist_id"], name: "index_albums_artists_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "lyrics"
    t.integer "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "songs", "albums"
end
