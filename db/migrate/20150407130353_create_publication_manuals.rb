class CreatePublicationManuals < ActiveRecord::Migration
  def change
    create_table :publication_manuals do |t|
      t.integer :publication_id
      t.integer :manual_id

      t.timestamps null: false
    end
  end
end
