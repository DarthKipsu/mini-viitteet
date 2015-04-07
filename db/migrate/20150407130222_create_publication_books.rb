class CreatePublicationBooks < ActiveRecord::Migration
  def change
    create_table :publication_books do |t|
      t.integer :publication_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
