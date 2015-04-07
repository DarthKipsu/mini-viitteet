class CreatePublicationUnpublisheds < ActiveRecord::Migration
  def change
    create_table :publication_unpublisheds do |t|
      t.integer :publication_id
      t.integer :unpublished_id

      t.timestamps null: false
    end
  end
end
