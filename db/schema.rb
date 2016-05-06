
ActiveRecord::Schema.define(version: 20160506192615) do

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
    t.date     "start_loan"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "phone"
    t.integer  "status"
    t.string   "rentedbookid"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "password_digest"
  end

end
