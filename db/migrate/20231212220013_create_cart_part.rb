class CreateCartPart < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_parts do |t|
      t.references :user
      t.references  :good
      t.float :quantity, null: false
      t.timestamps
    end
  end
end
