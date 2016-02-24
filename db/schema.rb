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

ActiveRecord::Schema.define(version: 20160224222936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backhoe_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "basement_ros", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boosterpumps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constant_pressure_systems", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conventional_well_pumps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crane_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customrepairs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emergencyservices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flood_preventions", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "fp_pic_file_name"
    t.string   "fp_pic_content_type"
    t.integer  "fp_pic_file_size"
    t.datetime "fp_pic_updated_at"
    t.string   "fp_tag"
  end

  create_table "jetpumps", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "jp_pic_file_name"
    t.string   "jp_pic_content_type"
    t.integer  "jp_pic_file_size"
    t.datetime "jp_pic_updated_at"
    t.string   "jp_tag"
  end

  create_table "newservicelines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pressuretanks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pumps_tanks_boosters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "undersink_ros", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "water_testing_services", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "wts_pic_file_name"
    t.string   "wts_pic_content_type"
    t.integer  "wts_pic_file_size"
    t.datetime "wts_pic_updated_at"
    t.string   "wts_tag"
  end

  create_table "wholehouse_ros", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
