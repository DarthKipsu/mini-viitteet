class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.integer :year
      t.string :publisher
      t.string :address
      t.string :series
      t.string :edition
      t.integer :month
      t.string :note
      t.string :key
      t.string :editor
      t.string :bibtexkey

      t.timestamps null: false
    end
  end
end
