class AddSet4WeightToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :set_4_weight, :integer
  end
end
