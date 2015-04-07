class CreatePublicationBooklets < ActiveRecord::Migration
  def change
    create_table :publication_booklets do |t|
      t.integer :publication_id
      t.integer :booklet_id

      t.timestamps null: false
    end
  end
end
