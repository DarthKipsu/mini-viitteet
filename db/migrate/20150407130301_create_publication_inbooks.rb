class CreatePublicationInbooks < ActiveRecord::Migration
  def change
    create_table :publication_inbooks do |t|
      t.integer :publication_id
      t.integer :inbook_id

      t.timestamps null: false
    end
  end
end
