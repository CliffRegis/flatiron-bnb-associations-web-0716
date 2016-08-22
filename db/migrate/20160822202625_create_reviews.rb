class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.integer :guest_id, foreign_key: true
      t.integer :reservation_id, foreign_key: true
    end
  end
end
