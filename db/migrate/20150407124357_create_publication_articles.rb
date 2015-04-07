class CreatePublicationArticles < ActiveRecord::Migration
  def change
    create_table :publication_articles do |t|
      t.integer :publication_id
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
