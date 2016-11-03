class AddListToWord < ActiveRecord::Migration
  def change
    add_column :words, :list_num, :integer, :null => false, :default => 0
  end
end
