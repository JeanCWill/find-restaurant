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

ActiveRecord::Schema.define(version: 20170623001256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id", using: :btree
  end

  create_table "menus", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "menu"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.decimal  "price"
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "photo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["restaurant_id"], name: "index_photos_on_restaurant_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "companyNmae"
    t.string   "description"
    t.string   "cnpj"
    t.string   "fantasyName"
    t.decimal  "latitude",    precision: 13, scale: 11
    t.decimal  "decimal",     precision: 13, scale: 11
    t.decimal  "longitude",   precision: 13, scale: 11
    t.integer  "city_id"
    t.integer  "category_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id"
    t.boolean  "open_sun"
    t.boolean  "open_mon"
    t.boolean  "open_tues"
    t.boolean  "open_wed"
    t.boolean  "open_thurs"
    t.boolean  "open_fri"
    t.boolean  "open_sat"
    t.index ["category_id"], name: "index_restaurants_on_category_id", using: :btree
    t.index ["city_id"], name: "index_restaurants_on_city_id", using: :btree
    t.index ["user_id"], name: "index_restaurants_on_user_id", using: :btree
  end

  create_table "review_mobiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "place"
    t.integer  "price"
    t.integer  "attendance"
    t.integer  "food"
    t.string   "descriprion"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "cities", "states"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "photos", "restaurants"
  add_foreign_key "restaurants", "categories"
  add_foreign_key "restaurants", "cities"
  add_foreign_key "restaurants", "users"
  add_foreign_key "reviews", "restaurants"
end
