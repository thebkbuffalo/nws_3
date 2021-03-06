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

ActiveRecord::Schema.define(version: 20160308210304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acid_neutralizers", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "acid_pic_file_name"
    t.string   "acid_pic_content_type"
    t.integer  "acid_pic_file_size"
    t.datetime "acid_pic_updated_at"
    t.string   "acid_tag"
  end

  create_table "activated_carbons", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "ac_pic_file_name"
    t.string   "ac_pic_content_type"
    t.integer  "ac_pic_file_size"
    t.datetime "ac_pic_updated_at"
    t.string   "ac_tag"
  end

  create_table "aerations", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "aeration_pic_file_name"
    t.string   "aeration_pic_content_type"
    t.integer  "aeration_pic_file_size"
    t.datetime "aeration_pic_updated_at"
    t.string   "aeration_tag"
  end

  create_table "backhoe_services", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "bh_pic_file_name"
    t.string   "bh_pic_content_type"
    t.integer  "bh_pic_file_size"
    t.datetime "bh_pic_updated_at"
    t.string   "bh_tag"
  end

  create_table "basement_ros", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "b_ro_pic_file_name"
    t.string   "b_ro_pic_content_type"
    t.integer  "b_ro_pic_file_size"
    t.datetime "b_ro_pic_updated_at"
    t.string   "b_ro_tag"
  end

  create_table "birms", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "birm_pic_file_name"
    t.string   "birm_pic_content_type"
    t.integer  "birm_pic_file_size"
    t.datetime "birm_pic_updated_at"
    t.string   "birm_tag"
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boosterpumps", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "bp_pic_file_name"
    t.string   "bp_pic_content_type"
    t.integer  "bp_pic_file_size"
    t.datetime "bp_pic_updated_at"
    t.string   "bp_tag"
  end

  create_table "chem_feeders", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "chem_pic_file_name"
    t.string   "chem_pic_content_type"
    t.integer  "chem_pic_file_size"
    t.datetime "chem_pic_updated_at"
    t.string   "chem_tag"
  end

  create_table "constant_pressure_systems", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constantpressuresystems", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "cps_pic_file_name"
    t.string   "cps_pic_content_type"
    t.integer  "cps_pic_file_size"
    t.datetime "cps_pic_updated_at"
    t.string   "cps_tag"
  end

  create_table "conventional_well_pumps", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "cwp_pic_file_name"
    t.string   "cwp_pic_content_type"
    t.integer  "cwp_pic_file_size"
    t.datetime "cwp_pic_updated_at"
    t.string   "cwp_tag"
  end

  create_table "crane_services", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "crane_pic_file_name"
    t.string   "crane_pic_content_type"
    t.integer  "crane_pic_file_size"
    t.datetime "crane_pic_updated_at"
    t.string   "crane_tag"
  end

  create_table "customrepairs", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "cr_pic_file_name"
    t.string   "cr_pic_content_type"
    t.integer  "cr_pic_file_size"
    t.datetime "cr_pic_updated_at"
    t.string   "cr_tag"
  end

  create_table "emergencyservices", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "es_pic_file_name"
    t.string   "es_pic_content_type"
    t.integer  "es_pic_file_size"
    t.datetime "es_pic_updated_at"
    t.string   "es_tag"
  end

  create_table "faucet_selections", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "faucet_pic_file_name"
    t.string   "faucet_pic_content_type"
    t.integer  "faucet_pic_file_size"
    t.datetime "faucet_pic_updated_at"
    t.string   "faucet_tag"
  end

  create_table "filtration_systems", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "filt_pic_file_name"
    t.string   "filt_pic_content_type"
    t.integer  "filt_pic_file_size"
    t.datetime "filt_pic_updated_at"
    t.string   "filt_tag"
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

  create_table "ion_exchanges", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "io_pic_file_name"
    t.string   "io_pic_content_type"
    t.integer  "io_pic_file_size"
    t.datetime "io_pic_updated_at"
    t.string   "io_tag"
  end

  create_table "iron_sulfurs", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "iron_pic_file_name"
    t.string   "iron_pic_content_type"
    t.integer  "iron_pic_file_size"
    t.datetime "iron_pic_updated_at"
    t.string   "iron_tag"
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

  create_table "kx_pros", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "kx_pic_file_name"
    t.string   "kx_pic_content_type"
    t.integer  "kx_pic_file_size"
    t.datetime "kx_pic_updated_at"
    t.string   "kx_tag"
  end

  create_table "multimedia", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "multimedia_pic_file_name"
    t.string   "multimedia_pic_content_type"
    t.integer  "multimedia_pic_file_size"
    t.datetime "multimedia_pic_updated_at"
    t.string   "multimedia_tag"
  end

  create_table "newservicelines", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "nsl_pic_file_name"
    t.string   "nsl_pic_content_type"
    t.integer  "nsl_pic_file_size"
    t.datetime "nsl_pic_updated_at"
    t.string   "nsl_tag"
  end

  create_table "optional_items", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "option_pic_file_name"
    t.string   "option_pic_content_type"
    t.integer  "option_pic_file_size"
    t.datetime "option_pic_updated_at"
    t.string   "option_tag"
  end

  create_table "ozones", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "ozone_pic_file_name"
    t.string   "ozone_pic_content_type"
    t.integer  "ozone_pic_file_size"
    t.datetime "ozone_pic_updated_at"
    t.string   "ozone_tag"
  end

  create_table "pressuretanks", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "pt_pic_file_name"
    t.string   "pt_pic_content_type"
    t.integer  "pt_pic_file_size"
    t.datetime "pt_pic_updated_at"
    t.string   "pt_tag"
  end

  create_table "pumps_tanks_boosters", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "ptb_pic_file_name"
    t.string   "ptb_pic_content_type"
    t.integer  "ptb_pic_file_size"
    t.datetime "ptb_pic_updated_at"
    t.string   "ptb_tag"
  end

  create_table "reverse_osmoses", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "ro_pic_file_name"
    t.string   "ro_pic_content_type"
    t.integer  "ro_pic_file_size"
    t.datetime "ro_pic_updated_at"
    t.string   "ro_tag"
  end

  create_table "sediment_controls", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "sediment_pic_file_name"
    t.string   "sediment_pic_content_type"
    t.integer  "sediment_pic_file_size"
    t.datetime "sediment_pic_updated_at"
    t.string   "sediment_tag"
  end

  create_table "ultraviolets", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "ultra_pic_file_name"
    t.string   "ultra_pic_content_type"
    t.integer  "ultra_pic_file_size"
    t.datetime "ultra_pic_updated_at"
    t.string   "ultra_tag"
  end

  create_table "undersink_ros", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "us_ro_pic_file_name"
    t.string   "us_ro_pic_content_type"
    t.integer  "us_ro_pic_file_size"
    t.datetime "us_ro_pic_updated_at"
    t.string   "us_ro_tag"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "videos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
    t.string   "title"
    t.text     "caption"
  end

  create_table "water_conditioners", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "water_condition_pic_file_name"
    t.string   "water_condition_pic_content_type"
    t.integer  "water_condition_pic_file_size"
    t.datetime "water_condition_pic_updated_at"
    t.string   "water_condition_tag"
  end

  create_table "water_coolers", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "wc_pic_file_name"
    t.string   "wc_pic_content_type"
    t.integer  "wc_pic_file_size"
    t.datetime "wc_pic_updated_at"
    t.string   "wc_tag"
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
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "wh_ro_pic_file_name"
    t.string   "wh_ro_pic_content_type"
    t.integer  "wh_ro_pic_file_size"
    t.datetime "wh_ro_pic_updated_at"
    t.string   "wh_ro_tag"
  end

end
