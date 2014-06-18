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

ActiveRecord::Schema.define(version: 20140618182347) do

  create_table "masters", force: true do |t|
    t.string   "name",       null: false
    t.string   "hometown",   null: false
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "masters", ["name"], name: "index_masters_on_name", unique: true

  create_table "moves", force: true do |t|
    t.string   "name",              null: false
    t.integer  "damage",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pocket_monster_id"
  end

  create_table "pocket_monsters", force: true do |t|
    t.string   "name",                           null: false
    t.string   "monster_type",                   null: false
    t.integer  "hp",                             null: false
    t.integer  "strength",                       null: false
    t.integer  "level",          default: 1,     null: false
    t.integer  "master_id",                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "monster_type_2"
    t.boolean  "fainted",        default: false
  end

  add_index "pocket_monsters", ["master_id"], name: "index_pocket_monsters_on_master_id"

end
