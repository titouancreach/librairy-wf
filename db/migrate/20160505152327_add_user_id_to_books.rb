class AddUserIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :userid, :integer
  end
end
