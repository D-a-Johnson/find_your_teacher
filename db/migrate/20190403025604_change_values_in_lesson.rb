class ChangeValuesInLesson < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :start_time, :datetime
    remove_column :lessons, :lat, :float
    remove_column :lessons, :lng, :float
    add_column :lessons, :longitude, :float
    add_column :lessons, :latitude, :float
  end
end
