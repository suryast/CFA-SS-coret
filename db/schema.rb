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

ActiveRecord::Schema.define(version: 20170424145048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street_name"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "artists", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.decimal  "earning_to_date", precision: 12, scale: 3
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "avatar"
    t.integer  "creation_id"
    t.index ["creation_id"], name: "index_artists_on_creation_id", using: :btree
    t.index ["user_id"], name: "index_artists_on_user_id", using: :btree
  end

  create_table "creations", force: :cascade do |t|
    t.string   "artist_name"
    t.string   "artwork_image"
    t.string   "name"
    t.text     "description"
    t.string   "creation_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "artist_id"
    t.index ["artist_id"], name: "index_creations_on_artist_id", using: :btree
    t.index ["user_id"], name: "index_creations_on_user_id", using: :btree
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price", precision: 12, scale: 3
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
    t.index ["product_id"], name: "index_order_items_on_product_id", using: :btree
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal",        precision: 12, scale: 3
    t.decimal  "tax",             precision: 12, scale: 3
    t.decimal  "shipping",        precision: 12, scale: 3
    t.decimal  "total",           precision: 12, scale: 3
    t.integer  "order_status_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "type_name"
    t.decimal  "price",      precision: 12, scale: 3
    t.boolean  "in_stock"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "image"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",           precision: 12, scale: 3
    t.text     "description"
    t.boolean  "in_stock"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "image"
    t.integer  "creation_id"
    t.integer  "product_type_id"
    t.integer  "user_id"
    t.index ["creation_id"], name: "index_products_on_creation_id", using: :btree
    t.index ["product_type_id"], name: "index_products_on_product_type_id", using: :btree
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                           default: "", null: false
    t.string   "encrypted_password",                              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "earning_to_date",        precision: 12, scale: 3
    t.string   "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "artists", "creations"
  add_foreign_key "artists", "users"
  add_foreign_key "creations", "artists"
  add_foreign_key "creations", "users"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "products", "creations"
  add_foreign_key "products", "product_types"
  add_foreign_key "products", "users"
end
