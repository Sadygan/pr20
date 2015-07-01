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

ActiveRecord::Schema.define(version: 20150701072147) do

  create_table "containers", force: true do |t|
    t.string   "name"
    t.string   "filetype"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "containers", ["project_id"], name: "index_containers_on_project_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specifics", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "specifics", ["project_id"], name: "index_specifics_on_project_id"

  create_table "table_specifics", force: true do |t|
    t.string   "factory"
    t.string   "model"
    t.string   "finishing"
    t.string   "description"
    t.string   "size"
    t.integer  "number"
    t.float    "factory_price"
    t.float    "factory_sum"
    t.float    "factor"
    t.float    "price_euro"
    t.float    "sum_euro"
    t.string   "v"
    t.integer  "specific_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "table_specifics", ["specific_id"], name: "index_table_specifics_on_specific_id"

end
