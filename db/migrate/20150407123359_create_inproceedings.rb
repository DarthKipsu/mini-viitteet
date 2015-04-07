class CreateInproceedings < ActiveRecord::Migration
  def change
    create_table :inproceedings do |t|
      t.string :author
      t.string :title
      t.string :booktitle
      t.integer :year
      t.string :editor
      t.string :volume
      t.integer :number
      t.string :series
      t.string :pages
      t.string :address
      t.integer :month
      t.string :organization
      t.string :publisher
      t.string :note
      t.string :key
      t.string :bibtexkey

      t.timestamps null: false
    end
  end
end
