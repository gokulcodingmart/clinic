class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.date :date

      t.timestamps
    end
  end
end
