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

ActiveRecord::Schema.define(version: 20150710095920) do

  create_table "containers", force: true do |t|
    t.string   "name"
    t.string   "filetype"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "containers", ["project_id"], name: "index_containers_on_project_id"

  create_table "factories", force: true do |t|
    t.string   "brend"
    t.string   "web"
    t.string   "autirification"
    t.string   "style"
    t.string   "line_product"
    t.string   "catalog"
    t.string   "price"
    t.string   "discount"
    t.string   "additional_discount"
    t.string   "delivery_term"
    t.string   "note"
    t.integer  "table_specific_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factory_lights", force: true do |t|
    t.string   "brend"
    t.string   "regin"
    t.float    "factor"
    t.integer  "minimum_order"
    t.string   "delivery_time"
    t.integer  "table_specification_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "address"
    t.string   "client"
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
    t.string   "article"
    t.text     "type_furniture"
    t.string   "finishing"
    t.string   "finishing_for_client"
    t.string   "size"
    t.float    "unit_price_factory"
    t.integer  "additional_discount"
    t.float    "unit_price_netto"
    t.float    "summ_netto"
    t.float    "unit_v"
    t.float    "summ_v"
    t.float    "factor"
    t.float    "unit_price"
    t.integer  "number_of"
    t.string   "summ"
    t.integer  "specific_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "table_specifics", ["specific_id"], name: "index_table_specifics_on_specific_id"

end
