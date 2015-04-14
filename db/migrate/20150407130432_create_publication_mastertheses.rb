class CreatePublicationMastertheses < ActiveRecord::Migration
  def change
    create_table :publication_mastertheses do |t|
      t.integer :publication_id
      t.integer :masterthesis_id

      t.timestamps null: false
    end
  end
end
