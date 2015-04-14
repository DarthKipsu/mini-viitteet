class MoveTypeField < ActiveRecord::Migration
  def self.up
    rename_column :incollections, :type, :reference_type
    rename_column :mastertheses, :type, :reference_type
    rename_column :phdtheses, :type, :reference_type
    rename_column :techreports, :type, :reference_type 
  end
end
