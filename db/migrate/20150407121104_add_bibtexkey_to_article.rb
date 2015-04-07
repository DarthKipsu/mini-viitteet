class AddBibtexkeyToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :bibtexkey, :string
  end
end
