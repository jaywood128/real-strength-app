class AddSet2WeightToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :set_2_weight, :integer
  end
end
