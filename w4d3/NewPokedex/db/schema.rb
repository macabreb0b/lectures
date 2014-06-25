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

ActiveRecord::Schema.define(version: 20140625162507) do

  create_table "masters", force: true do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "hometown"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "masters", ["email"], name: "index_masters_on_email", unique: true

  create_table "pokemons", force: true do |t|
    t.string   "name",       null: false
    t.integer  "height",     null: false
    t.integer  "weight",     null: false
    t.string   "gender",     null: false
    t.string   "type_one",   null: false
    t.string   "type_two"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "master_id"
  end

  add_index "pokemons", ["master_id"], name: "index_pokemons_on_master_id"

end
