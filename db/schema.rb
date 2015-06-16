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

ActiveRecord::Schema.define(version: 20140625101010) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "array_currents", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "array11"
    t.decimal  "array12"
    t.decimal  "array13"
    t.decimal  "array21"
    t.decimal  "array22"
    t.decimal  "array23"
    t.decimal  "array31"
    t.decimal  "array32"
    t.decimal  "array33"
    t.decimal  "array41"
    t.decimal  "array42"
    t.decimal  "array43"
    t.decimal  "array51"
    t.decimal  "array52"
    t.decimal  "array53"
    t.decimal  "array61"
    t.decimal  "array62"
    t.decimal  "array63"
    t.decimal  "array71"
    t.decimal  "array72"
    t.decimal  "array73"
    t.decimal  "array81"
    t.decimal  "array82"
    t.decimal  "array83"
    t.decimal  "array91"
    t.decimal  "array92"
    t.decimal  "array93"
    t.decimal  "array101"
    t.decimal  "array102"
    t.decimal  "array103"
    t.decimal  "array111"
    t.decimal  "array112"
    t.decimal  "array113"
    t.decimal  "array121"
    t.decimal  "array122"
    t.decimal  "array123"
    t.decimal  "array131"
    t.decimal  "array132"
    t.decimal  "array133"
    t.decimal  "array141"
    t.decimal  "array142"
    t.decimal  "array143"
    t.decimal  "array151"
    t.decimal  "array152"
    t.decimal  "array153"
  end

  create_table "array_powers", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "array11"
    t.decimal  "array12"
    t.decimal  "array13"
    t.decimal  "array21"
    t.decimal  "array22"
    t.decimal  "array23"
    t.decimal  "array31"
    t.decimal  "array32"
    t.decimal  "array33"
    t.decimal  "array41"
    t.decimal  "array42"
    t.decimal  "array43"
    t.decimal  "array51"
    t.decimal  "array52"
    t.decimal  "array53"
    t.decimal  "array61"
    t.decimal  "array62"
    t.decimal  "array63"
    t.decimal  "array71"
    t.decimal  "array72"
    t.decimal  "array73"
    t.decimal  "array81"
    t.decimal  "array82"
    t.decimal  "array83"
    t.decimal  "array91"
    t.decimal  "array92"
    t.decimal  "array93"
    t.decimal  "array101"
    t.decimal  "array102"
    t.decimal  "array103"
    t.decimal  "array111"
    t.decimal  "array112"
    t.decimal  "array113"
    t.decimal  "array121"
    t.decimal  "array122"
    t.decimal  "array123"
    t.decimal  "array131"
    t.decimal  "array132"
    t.decimal  "array133"
    t.decimal  "array141"
    t.decimal  "array142"
    t.decimal  "array143"
    t.decimal  "array151"
    t.decimal  "array152"
    t.decimal  "array153"
  end

  create_table "array_voltages", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "array11"
    t.decimal  "array12"
    t.decimal  "array13"
    t.decimal  "array21"
    t.decimal  "array22"
    t.decimal  "array23"
    t.decimal  "array31"
    t.decimal  "array32"
    t.decimal  "array33"
    t.decimal  "array41"
    t.decimal  "array42"
    t.decimal  "array43"
    t.decimal  "array51"
    t.decimal  "array52"
    t.decimal  "array53"
    t.decimal  "array61"
    t.decimal  "array62"
    t.decimal  "array63"
    t.decimal  "array71"
    t.decimal  "array72"
    t.decimal  "array73"
    t.decimal  "array81"
    t.decimal  "array82"
    t.decimal  "array83"
    t.decimal  "array91"
    t.decimal  "array92"
    t.decimal  "array93"
    t.decimal  "array101"
    t.decimal  "array102"
    t.decimal  "array103"
    t.decimal  "array111"
    t.decimal  "array112"
    t.decimal  "array113"
    t.decimal  "array121"
    t.decimal  "array122"
    t.decimal  "array123"
    t.decimal  "array131"
    t.decimal  "array132"
    t.decimal  "array133"
    t.decimal  "array141"
    t.decimal  "array142"
    t.decimal  "array143"
    t.decimal  "array151"
    t.decimal  "array152"
    t.decimal  "array153"
  end

  create_table "calculations", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "daily_energy"
    t.decimal  "pr_ratio"
  end

  create_table "general_infos", force: true do |t|
    t.string   "name"
    t.string   "solar_panels"
    t.string   "nominal_power"
    t.string   "string_inverters"
    t.string   "nominal_inverter"
    t.string   "number_per_inverter"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lv_activepowers", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "value"
  end

  create_table "meteo_parameters", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "ambient_temp"
    t.decimal  "irradiation"
    t.decimal  "panel_temp"
  end

  create_table "mv_currents", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "mv1"
    t.decimal  "mv2"
    t.decimal  "mv3"
  end

  create_table "mv_outputpowers", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "value"
  end

  create_table "mv_voltages", id: false, force: true do |t|
    t.datetime "date_time"
    t.decimal  "mv1"
    t.decimal  "mv2"
    t.decimal  "mv3"
  end

  create_table "park_structures", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
