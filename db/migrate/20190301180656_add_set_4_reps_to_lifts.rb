class AddSet4RepsToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :set_4_reps, :integer
  end
end
