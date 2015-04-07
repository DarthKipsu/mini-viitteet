class CreatePublicationPhdtheses < ActiveRecord::Migration
  def change
    create_table :publication_phdtheses do |t|
      t.integer :publication_id
      t.integer :phdthesis_id

      t.timestamps null: false
    end
  end
end
