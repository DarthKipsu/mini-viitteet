class CreatePublicationTechreports < ActiveRecord::Migration
  def change
    create_table :publication_techreports do |t|
      t.integer :publication_id
      t.integer :techreport_id

      t.timestamps null: false
    end
  end
end
