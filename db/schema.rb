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

ActiveRecord::Schema.define(version: 20170622025904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: :cascade do |t|
    t.string   "drink"
    t.float    "price"
    t.string   "description"
    t.integer  "happyhour_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "deals_happyhours", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "happyhour_id"
  end

  create_table "happyhours", force: :cascade do |t|
    t.time     "start"
    t.time     "end"
    t.integer  "venue_id"
    t.integer  "deal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "day"
  end

  create_table "happyhours_deals", force: :cascade do |t|
    t.integer "happyhour_id"
    t.integer "deal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "email"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "category"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
  end

end
