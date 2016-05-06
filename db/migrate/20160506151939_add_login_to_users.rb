class AddLoginToUsers < ActiveRecord::Migration
  def change
    add_column :Users, :username, :string
    add_column :Users, :password, :string
  end
end
