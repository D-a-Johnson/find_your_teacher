class ChangeValuesInLesson < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :lat, :float
    remove_column :lessons, :lng, :float
    add_column :lessons, :longitude, :float
    add_column :lessons, :latitude, :float
  end
end
