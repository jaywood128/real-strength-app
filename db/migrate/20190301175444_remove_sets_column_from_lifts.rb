class RemoveSetsColumnFromLifts < ActiveRecord::Migration
  def change
    remove_column :lifts, :sets
  end
end
