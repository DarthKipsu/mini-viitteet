class AddBibtexkeyToManual < ActiveRecord::Migration
  def change
    add_column :manuals, :bibtexkey, :string
  end
end
