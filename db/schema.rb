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

ActiveRecord::Schema.define(version: 20131030032723) do

  create_table "items", force: true do |t|
    t.string   "dish_name"
    t.string   "description"
    t.string   "subcategory"
    t.integer  "inventory"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
    t.integer  "dollars"
    t.integer  "cents"
  end

  create_table "orders", force: true do |t|
    t.integer  "quantity"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.integer  "item_id"
  end

  create_table "past_orders", force: true do |t|
    t.integer  "quantity"
    t.string   "note"
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "category"
    t.string   "phone_number"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner"
  end

  create_table "users", force: true do |t|
    t.string   "role"
    t.string   "username"
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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
