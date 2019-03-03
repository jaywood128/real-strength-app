class AddSet1WeightToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :set_1_weight, :integer
  end
end
