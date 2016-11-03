class AddCountToWord < ActiveRecord::Migration
  def change
    add_column :words, :guess_count, :integer, :null => false, :default => 0
    add_column :words, :correct_guess_count, :integer, :null => false, :default => 0
    add_column :words, :streak_count, :integer, :null => false, :default => 0
    add_column :words, :streak_type, :string
  end
end
