class AddEndTimeToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :end_time, :datetime
  end
end
