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

ActiveRecord::Schema.define(version: 20140630162125) do

  create_table "astronauts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planet_visits", force: true do |t|
    t.integer  "astronaut_id"
    t.integer  "planet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "planet_visits", ["astronaut_id"], name: "index_planet_visits_on_astronaut_id"
  add_index "planet_visits", ["planet_id"], name: "index_planet_visits_on_planet_id"

  create_table "planets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "space_loots", force: true do |t|
    t.integer  "astronaut_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
