class AddColumnToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :start_time, :datetime
  end
end
