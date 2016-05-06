class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :description
      t.string :author
      t.integer :status
      t.string :thumbnail
      t.date :return
      t.integer :userid

      t.timestamps null: false
    end
  end
end
