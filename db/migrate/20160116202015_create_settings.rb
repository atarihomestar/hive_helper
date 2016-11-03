class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :list_num
      t.integer :streak_min

      t.timestamps null: false
    end
  end
end
