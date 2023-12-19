class CreateGoods < ActiveRecord::Migration[7.1]
  def change
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
  end
end
