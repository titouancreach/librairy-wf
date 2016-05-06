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

ActiveRecord::Schema.define(version: 20160506151939) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "isbn"
    t.string   "description"
    t.string   "author"
    t.integer  "status"
    t.string   "thumbnail"
    t.date     "return"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "userid"
    t.date     "start_loan"
  end

  create_table "members", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "phone"
    t.integer  "status"
    t.integer  "bookid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "phone"
    t.integer  "status"
    t.string   "rentedbookid"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "username"
    t.string   "password"
  end

end
