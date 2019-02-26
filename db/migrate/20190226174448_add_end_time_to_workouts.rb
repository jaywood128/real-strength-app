class AddEndTimeToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :end_time, :integer
  end
end
