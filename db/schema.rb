# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_20_002956) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_parts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "good_id"
    t.float "quantity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_cart_parts_on_good_id"
    t.index ["user_id"], name: "index_cart_parts_on_user_id"
  end

  create_table "goods", force: :cascade do |t|
    t.string "nomenclature", null: false
    t.float "price", null: false
    t.text "description"
    t.integer "category", null: false
    t.binary "picture"
    t.integer "quantity", null: false
    t.string "measure", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nomenclature"], name: "index_goods_on_nomenclature", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "login", null: false
    t.string "phone_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "password", array: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["phone_num"], name: "index_users_on_phone_num", unique: true
  end

end
