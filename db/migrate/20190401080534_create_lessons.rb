class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.references :category, foreign_key: true
      t.integer :price
      t.integer :duration
      t.datetime :date
      t.text :detail
      t.string :city
      t.string :postal_code
      t.float :lng
      t.float :lat
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
