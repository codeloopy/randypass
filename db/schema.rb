# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_13_113922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "item_name_ciphertext"
    t.text "website_ciphertext"
    t.text "website_username_ciphertext"
    t.text "website_watchword_ciphertext"
    t.text "item_notes_ciphertext"
    t.string "item_name_bidx"
    t.string "website_bidx"
    t.string "website_username_bidx"
    t.string "website_watchword_bidx"
    t.string "item_notes_bidx"
  end

end