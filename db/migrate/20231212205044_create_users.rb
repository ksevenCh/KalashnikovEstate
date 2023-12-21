class CreateUsers < ActiveRecord::Migration[7.1]
  def up
    create_table :users do |t|
      t.string :email, index: {unique: true}, null: false
      t.string :login, index: {unique: true}, null: false
      t.string :password, null: true
      t.string :phone_num, index: {unique: true}
      t.timestamps
    end
  end
end
