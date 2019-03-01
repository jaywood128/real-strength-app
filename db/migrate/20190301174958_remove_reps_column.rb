class RemoveRepsColumn < ActiveRecord::Migration
  def change
    remove_column :lifts, :reps
  end
end
