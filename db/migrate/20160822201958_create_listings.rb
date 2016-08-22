class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :host_id
      t.text :description
      t.string :address
      t.string :listing_type
      t.float :price
      t.integer :neighborhood_id, foreign_key: true
    end
  end
end
