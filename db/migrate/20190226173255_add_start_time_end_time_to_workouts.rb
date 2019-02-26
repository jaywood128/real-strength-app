class AddStartTimeEndTimeToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :start_time, :integer
  end
end
