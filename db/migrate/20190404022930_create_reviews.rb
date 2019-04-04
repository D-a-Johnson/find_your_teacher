class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :lesson, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content
      t.integer :rating
    end
  end
end
