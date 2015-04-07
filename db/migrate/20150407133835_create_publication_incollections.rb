class CreatePublicationIncollections < ActiveRecord::Migration
  def change
    create_table :publication_incollections do |t|
      t.integer :publication_id
      t.integer :incollection_id

      t.timestamps null: false
    end
  end
end
