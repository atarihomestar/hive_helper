class AddTotalGuessesToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :total_guesses, :integer
  end
end
