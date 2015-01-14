class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :publication_year
      t.bigint :isbn
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
