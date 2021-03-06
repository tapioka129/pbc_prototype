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

ActiveRecord::Schema.define(version: 20161211035706) do

  create_table "design_users", force: :cascade do |t|
    t.integer  "design_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "design_users", ["design_id"], name: "index_design_users_on_design_id"
  add_index "design_users", ["user_id"], name: "index_design_users_on_user_id"

  create_table "designs", force: :cascade do |t|
    t.date     "date"
    t.text     "summary"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "prototype_id"
  end

  create_table "experiment_users", force: :cascade do |t|
    t.integer  "experiment_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "experiment_users", ["experiment_id"], name: "index_experiment_users_on_experiment_id"
  add_index "experiment_users", ["user_id"], name: "index_experiment_users_on_user_id"

  create_table "experiments", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.text     "purpose"
    t.text     "summary_result"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "image"
    t.integer  "prototype_id"
    t.integer  "user_id"
  end

  create_table "parts", force: :cascade do |t|
    t.date     "date"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "title"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prototype_users", force: :cascade do |t|
    t.integer  "prototype_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "prototype_users", ["prototype_id"], name: "index_prototype_users_on_prototype_id"
  add_index "prototype_users", ["user_id"], name: "index_prototype_users_on_user_id"

  create_table "prototypes", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.text     "reason"
    t.text     "major_change"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "prototypes_users", force: :cascade do |t|
    t.integer "prototype_id"
    t.integer "user_id"
  end

  create_table "records", force: :cascade do |t|
    t.text     "comment"
    t.string   "image"
    t.integer  "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "account_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
