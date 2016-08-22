class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.integer :guest_id, foreign_key: true
      t.integer :listing_id, foreign_key: true
    end
  end
end
