class CreateIncollections < ActiveRecord::Migration
  def change
    create_table :incollections do |t|
      t.string :author
      t.string :title
      t.string :booktitle
      t.string :publisher
      t.integer :year
      t.string :editor
      t.string :volume
      t.integer :number
      t.string :series
      t.string :type
      t.string :chapter
      t.string :pages
      t.string :address
      t.string :edition
      t.integer :month
      t.string :note
      t.string :key
      t.string :bibtexkey

      t.timestamps null: false
    end
  end
end
