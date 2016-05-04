class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :description
      t.string :author
      t.integer :status
      t.primary_key :id
      t.string :thumbnail
      t.date :return

      t.timestamps null: false
    end
  end
end
