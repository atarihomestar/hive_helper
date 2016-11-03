class AddPerfectionToList < ActiveRecord::Migration
  def change
    add_column :lists, :currently_attempting_perfection, :boolean, default: true
  end
end
