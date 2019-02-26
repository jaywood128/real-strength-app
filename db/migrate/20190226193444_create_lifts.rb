class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.string :name
      t.integer :reps
      t.integer :sets
    end
  end
end
