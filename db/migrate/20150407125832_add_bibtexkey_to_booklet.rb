class AddBibtexkeyToBooklet < ActiveRecord::Migration
  def change
    add_column :booklets, :bibtexkey, :string
  end
end
