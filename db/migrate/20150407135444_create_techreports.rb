class CreateTechreports < ActiveRecord::Migration
  def change
    create_table :techreports do |t|
      t.string :author
      t.string :title
      t.string :institution
      t.integer :year
      t.string :type
      t.string :number
      t.string :address
      t.integer :month
      t.string :note
      t.string :key
      t.string :bibtexkey

      t.timestamps null: false
    end
  end
end
