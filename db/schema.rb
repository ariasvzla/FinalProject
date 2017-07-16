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

ActiveRecord::Schema.define(version: 20170716222546) do

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.decimal  "totalcost"
    t.datetime "start"
    t.datetime "end"
    t.integer  "numpeople"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flightadmins", force: :cascade do |t|
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
    t.index ["email"], name: "index_flightadmins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_flightadmins_on_reset_password_token", unique: true
  end

  create_table "flights", force: :cascade do |t|
    t.string   "fligthcode"
    t.string   "airline"
    t.integer  "stopsn"
    t.integer  "seatn"
    t.datetime "timestart"
    t.datetime "timeend"
    t.decimal  "price"
    t.string   "planeimg"
    t.string   "origin"
    t.string   "dest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hoteladmins", force: :cascade do |t|
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
    t.index ["email"], name: "index_hoteladmins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hoteladmins_on_reset_password_token", unique: true
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "roomtype"
    t.integer  "numroom"
    t.boolean  "avaibility"
    t.string   "hotelimg"
    t.decimal  "pricepn"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "hoteladmin_id"
    t.index ["hoteladmin_id"], name: "index_hotels_on_hoteladmin_id"
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "interest"
    t.decimal  "price"
    t.datetime "open"
    t.datetime "close"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.string   "phone"
    t.string   "gender"
    t.datetime "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "roomtype"
    t.integer  "romnum"
    t.decimal  "pricepn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "hotels_id"
    t.integer  "quantity"
    t.index ["hotels_id"], name: "index_rooms_on_hotels_id"
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
    t.boolean  "admin"
    t.boolean  "hoteladmin"
    t.boolean  "flightadmin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
