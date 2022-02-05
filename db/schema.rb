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

ActiveRecord::Schema.define(version: 2022_02_05_124158) do

  create_table "attachment_boardgames", force: :cascade do |t|
    t.integer "attachment_id"
    t.integer "boardgame_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachment_id"], name: "index_attachment_boardgames_on_attachment_id"
    t.index ["boardgame_id"], name: "index_attachment_boardgames_on_boardgame_id"
  end

  create_table "attachments", force: :cascade do |t|
    t.string "name"
    t.string "download_url"
    t.string "attachable_type"
    t.integer "attachable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachable_type", "attachable_id"], name: "index_attachments_on_attachable_type_and_attachable_id"
  end

  create_table "boardgames", force: :cascade do |t|
    t.string "name"
    t.integer "min_players"
    t.integer "max_players"
    t.text "description"
    t.string "ages"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imageboards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imagepieces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pdfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
