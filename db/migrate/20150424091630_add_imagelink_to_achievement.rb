class AddImagelinkToAchievement < ActiveRecord::Migration
  def change
    add_column :achievements, :imagelink, :string
  end
end
