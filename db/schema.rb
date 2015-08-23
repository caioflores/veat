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

ActiveRecord::Schema.define(version: 20150823064739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cookers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.string   "name"
  end

  add_index "cookers", ["email"], name: "index_cookers_on_email", unique: true, using: :btree
  add_index "cookers", ["provider"], name: "index_cookers_on_provider", using: :btree
  add_index "cookers", ["reset_password_token"], name: "index_cookers_on_reset_password_token", unique: true, using: :btree
  add_index "cookers", ["uid"], name: "index_cookers_on_uid", using: :btree

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "category"
    t.string   "adress"
    t.integer  "participants_max"
    t.boolean  "deliver"
    t.string   "picture"
    t.integer  "price"
    t.datetime "datetime"
    t.integer  "cooker_id"
    t.integer  "participants_now"
  end

  add_index "meals", ["cooker_id"], name: "index_meals_on_cooker_id", using: :btree

  create_table "participations", force: :cascade do |t|
    t.integer "cooker_id"
    t.integer "meal_id"
  end

  add_index "participations", ["cooker_id"], name: "index_participations_on_cooker_id", using: :btree
  add_index "participations", ["meal_id"], name: "index_participations_on_meal_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string  "name"
    t.string  "uid"
    t.string  "cep"
    t.string  "adress"
    t.string  "city"
    t.string  "state"
    t.string  "phone"
    t.integer "cooker_id"
  end

  add_index "profiles", ["cooker_id"], name: "index_profiles_on_cooker_id", using: :btree

  add_foreign_key "meals", "cookers"
  add_foreign_key "participations", "cookers"
  add_foreign_key "participations", "meals"
  add_foreign_key "profiles", "cookers"
end
