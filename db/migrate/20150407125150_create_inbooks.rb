class CreateInbooks < ActiveRecord::Migration
  def change
    create_table :inbooks do |t|
      t.string :author
      t.string :editor
      t.string :title
      t.string :chapter
      t.string :pages
      t.string :publisher
      t.integer :year
      t.string :volume
      t.string :number
      t.string :series
      t.string :type
      t.string :address
      t.string :edition
      t.integer :month
      t.string :note
      t.string :key

      t.timestamps null: false
    end
  end
end
