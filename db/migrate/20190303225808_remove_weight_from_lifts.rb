class RemoveWeightFromLifts < ActiveRecord::Migration
  def change
    remove_column :lifts, :weight, :integer
  end
end
