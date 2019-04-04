class ChangeLocationToLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :postal_code, :string
    add_column :lessons, :address, :string
  end
end
