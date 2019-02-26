class Workouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.text :name
      t.integer :sets
      t.integer :reps
    end
  end
end
