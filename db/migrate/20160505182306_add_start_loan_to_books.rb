class AddStartLoanToBooks < ActiveRecord::Migration
  def change
    add_column :Books, :start_loan, :date
  end
end
