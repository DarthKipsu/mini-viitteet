class CreateUnpublisheds < ActiveRecord::Migration
  def change
    create_table :unpublisheds do |t|
      t.string :author
      t.string :title
      t.string :note
      t.integer :month
      t.integer :year
      t.string :key
      t.string :bibtexkey

      t.timestamps null: false
    end
  end
end
