class CreatePublicationMiscs < ActiveRecord::Migration
  def change
    create_table :publication_miscs do |t|
      t.integer :publication_id
      t.integer :misc_id

      t.timestamps null: false
    end
  end
end
