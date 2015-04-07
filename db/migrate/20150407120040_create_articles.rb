class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :journal
      t.integer :year
      t.string :volume
      t.integer :number
      t.string :pages
      t.integer :month
      t.string :note
      t.string :key

      t.timestamps null: false
    end
  end
end
