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

ActiveRecord::Schema.define(version: 2020_03_12_153205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "discussions", force: :cascade do |t|
    t.bigint "sender_id"
    t.bigint "receiever_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiever_id"], name: "index_discussions_on_receiever_id"
    t.index ["sender_id"], name: "index_discussions_on_sender_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id"
    t.bigint "discussion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discussion_id"], name: "index_messages_on_discussion_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "discussions", "users", column: "receiever_id"
  add_foreign_key "discussions", "users", column: "sender_id"
end
