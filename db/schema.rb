# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160520043342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "title"
    t.string   "breed"
    t.string   "description"
    t.string   "photo"
    t.integer  "location_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "photos_file_name"
    t.string   "photos_content_type"
    t.integer  "photos_file_size"
    t.datetime "photos_updated_at"
  end

  add_index "animals", ["location_id"], name: "index_animals_on_location_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "photo"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "location_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "photos_file_name"
    t.string   "photos_content_type"
    t.integer  "photos_file_size"
    t.datetime "photos_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["location_id"], name: "index_users_on_location_id", using: :btree

  add_foreign_key "animals", "locations"
  add_foreign_key "users", "locations"
end
