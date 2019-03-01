class AddSet3RepsToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :set_3_reps, :integer
  end
end
