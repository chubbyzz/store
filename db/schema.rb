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

ActiveRecord::Schema.define(version: 20150605175928) do

  create_table "images", force: :cascade do |t|
    t.string   "url",        limit: 255
    t.boolean  "main",       limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "product_id", limit: 4
  end

  create_table "photos", force: :cascade do |t|
    t.boolean  "main",          limit: 1
    t.boolean  "false",         limit: 1
    t.integer  "imageble_id",   limit: 4
    t.string   "imageble_type", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "photos", ["imageble_id"], name: "index_photos_on_imageble_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.float    "price",      limit: 24
    t.string   "code",       limit: 255
    t.integer  "status_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
