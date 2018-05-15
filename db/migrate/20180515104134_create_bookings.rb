class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
