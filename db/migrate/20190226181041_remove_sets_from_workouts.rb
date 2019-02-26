class RemoveSetsFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :sets
  end
end
