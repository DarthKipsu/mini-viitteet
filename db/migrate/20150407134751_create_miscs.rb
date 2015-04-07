class CreateMiscs < ActiveRecord::Migration
  def change
    create_table :miscs do |t|
      t.string :author
      t.string :title
      t.string :howpublished
      t.integer :month
      t.integer :year
      t.string :note
      t.string :key
      t.string :bibtexkey

      t.timestamps null: false
    end
  end
end
