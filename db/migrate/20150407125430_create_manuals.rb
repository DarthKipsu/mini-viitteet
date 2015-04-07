class CreateManuals < ActiveRecord::Migration
  def change
    create_table :manuals do |t|
      t.string :title
      t.string :author
      t.string :organization
      t.string :address
      t.string :edition
      t.string :month
      t.integer :year
      t.string :note
      t.string :key

      t.timestamps null: false
    end
  end
end
