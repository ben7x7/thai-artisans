class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :pax
      t.date :date
      t.time :time
      t.text :message

      t.timestamps
    end
  end
end
