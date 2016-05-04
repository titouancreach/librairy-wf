class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :address1
      t.string :address2
      t.string :phone
      t.integer :status
      t.integer :rentedbookid

      t.timestamps null: false
    end
  end
end
