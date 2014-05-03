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

ActiveRecord::Schema.define(version: 20140503105200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "name",                   null: false
    t.integer  "order",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_on_top_page", default: false
  end

  add_index "foods", ["is_on_top_page"], name: "index_foods_on_is_on_top_page", using: :btree

  create_table "foods_have_categories", id: false, force: true do |t|
    t.integer "food_id"
    t.integer "category_id"
  end

  add_index "foods_have_categories", ["food_id", "category_id"], name: "index_foods_have_categories_on_food_id_and_category_id", using: :btree
  add_index "foods_have_categories", ["food_id"], name: "index_foods_have_categories_on_food_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title",                      null: false
    t.text     "content"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_event",   default: false
  end

  add_index "posts", ["is_event"], name: "index_posts_on_is_event", using: :btree

end
