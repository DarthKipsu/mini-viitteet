class CreatePublicationAchievements < ActiveRecord::Migration
  def change
    create_table :publication_achievements do |t|
      t.integer :publication_id
      t.integer :achievement_id
      t.boolean :display

      t.timestamps null: false
    end
  end
end
