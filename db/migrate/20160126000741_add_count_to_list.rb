class AddCountToList < ActiveRecord::Migration
  def change
    add_column :lists, :perfect_count, :integer
    add_column :lists, :current_perfect_streak, :integer
    add_column :lists, :longest_perfect_streak, :integer
  end
end
