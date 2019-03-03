class AddSet3WeightToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :set_3_weight, :integer
  end
end
