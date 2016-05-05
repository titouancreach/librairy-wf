class SampleNameChangeColumnType < ActiveRecord::Migration
  def change
    change_column(:users, :rentedbookid, :string)
  end
  
  def up
     change_column(:users, :rentedbookid, :string)
  end
  
  def up
     change_column(:users, :rentedbookid, :integer)
  end
end
