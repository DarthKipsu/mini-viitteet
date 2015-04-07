class CreatePublicationInproceedings < ActiveRecord::Migration
  def change
    create_table :publication_inproceedings do |t|
      t.integer :publication_id
      t.integer :inproceeding_id

      t.timestamps null: false
    end
  end
end
