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

ActiveRecord::Schema.define(version: 2020_11_23_010131) do

  create_table "dino_types", force: :cascade do |t|
    t.string "name"
    t.string "picture_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "era_id"
    t.index ["era_id"], name: "index_dino_types_on_era_id"
  end

  create_table "dinosaurs", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.integer "weight"
    t.string "temporal_range"
    t.integer "year_discovered"
    t.string "picture_url"
    t.string "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "dino_type_id"
    t.index ["dino_type_id"], name: "index_dinosaurs_on_dino_type_id"
  end

  create_table "eras", force: :cascade do |t|
    t.string "name"
    t.string "picture_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dino_types", "eras"
  add_foreign_key "dinosaurs", "dino_types"
end
