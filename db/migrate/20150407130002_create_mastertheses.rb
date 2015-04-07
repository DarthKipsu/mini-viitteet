class CreateMastertheses < ActiveRecord::Migration
  def change
    create_table :mastertheses do |t|
      t.string :author
      t.string :title
      t.string :school
      t.integer :year
      t.string :type
      t.string :address
      t.integer :month
      t.string :note
      t.string :key
      t.string :bibtexkey

      t.timestamps null: false
    end
  end
end
