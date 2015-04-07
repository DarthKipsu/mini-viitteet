class AddBibtexkeyToInbook < ActiveRecord::Migration
  def change
    add_column :inbooks, :bibtexkey, :string
  end
end
