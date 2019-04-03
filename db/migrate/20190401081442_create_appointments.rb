class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
