class AddWeightsToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :weight, :integer
  end
end
