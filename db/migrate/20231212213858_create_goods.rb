class CreateGoods < ActiveRecord::Migration[7.1]
  def change
    create_table :goods do |t|
      t.string :nomenclature, index:{unique:true}, null: false
      t.float :price, null: false
      t.text :description
      t.integer :category, null: false
      t.blob :picture
      t.integer :quantity, null: false
      t.string :measure, null: false
      t.timestamps
    end
  end
end
