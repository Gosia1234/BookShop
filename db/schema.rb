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

ActiveRecord::Schema.define(version: 20170416105144) do

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
    t.string   "firstName"
    t.string   "lastName"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "pages"
    t.decimal  "costPrice"
    t.string   "ISBN"
    t.integer  "gty"
    t.string   "publisher"
    t.text     "description"
    t.string   "image"
    t.string   "relaseDate"
    t.integer  "supplier_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "category"
  end

  add_index "books", ["supplier_id"], name: "index_books_on_supplier_id"

  create_table "profiles", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "returns", force: :cascade do |t|
    t.date     "returnDate"
    t.integer  "saleItem_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "returns", ["saleItem_id"], name: "index_returns_on_saleItem_id"

  create_table "sale_items", force: :cascade do |t|
    t.decimal  "salePrice"
    t.boolean  "returned"
    t.integer  "book_id"
    t.integer  "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sale_items", ["book_id"], name: "index_sale_items_on_book_id"
  add_index "sale_items", ["sale_id"], name: "index_sale_items_on_sale_id"

  create_table "sales", force: :cascade do |t|
    t.decimal  "saleTotal"
    t.integer  "qtySold"
    t.date     "saleDate"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sales", ["user_id"], name: "index_sales_on_user_id"

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "tel"
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
    t.string   "firstName"
    t.string   "lastName"
    t.text     "address"
    t.string   "tel"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
