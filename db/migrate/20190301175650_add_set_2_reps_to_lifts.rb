class AddSet2RepsToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :set_2_reps, :integer
  end
end
