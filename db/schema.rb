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

ActiveRecord::Schema.define(version: 20160906194606) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "type"
    t.string "time"
    t.text   "details"
    t.date   "date"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "gender"
    t.string   "weight"
    t.string   "height"
    t.string   "incident_type"
    t.text     "reason_short"
    t.text     "reason_detailed"
    t.boolean  "cfa",             default: false
    t.boolean  "contact",         default: false
    t.boolean  "archived",        default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "access"
    t.string "password_digest"
  end

end
