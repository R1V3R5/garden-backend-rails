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

ActiveRecord::Schema.define(version: 20160822011723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "garden_journals", force: :cascade do |t|
    t.text     "content"
    t.integer  "garden_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "height"
    t.integer  "width"
    t.string   "tags"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.text     "common_problems"
    t.string   "family"
    t.text     "fertilizers"
    t.string   "hardy"
    t.text     "harvesting_how"
    t.text     "harvesting_when"
    t.text     "maintenance"
    t.integer  "maturity"
    t.integer  "production"
    t.string   "season"
    t.text     "secrets"
    t.integer  "seed_count"
    t.text     "seed_indoors"
    t.text     "seed_outdoors"
    t.integer  "seed_to_harvest"
    t.integer  "sun"
    t.integer  "size"
    t.integer  "water"
    t.text     "transplanting"
    t.string   "starting_location"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.integer  "garden_id"
    t.integer  "dom_id"
    t.integer  "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "access_token"
    t.string   "location"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

end
