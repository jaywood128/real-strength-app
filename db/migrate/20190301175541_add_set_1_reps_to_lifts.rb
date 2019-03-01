class AddSet1RepsToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :set_1_reps, :integer
  end
end
