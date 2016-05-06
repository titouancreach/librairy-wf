class AddStartLoanToBooks < ActiveRecord::Migration
  def change
    add_column :books, :start_loan, :date
  end
end
