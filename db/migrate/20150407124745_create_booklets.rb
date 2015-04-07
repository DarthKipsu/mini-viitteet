class CreateBooklets < ActiveRecord::Migration
  def change
    create_table :booklets do |t|
      t.string :title
      t.string :author
      t.string :howpublished
      t.string :address
      t.integer :month
      t.integer :year
      t.string :note
      t.string :key

      t.timestamps null: false
    end
  end
end
