class CreateTrailsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :difficulty
      t.boolean :has_water
      t.boolean :pets_allowed
      t.boolean :has_bathrooms
      t.boolean :has_shade
      t.boolean :has_parking_fee
      t.float :length_distance
      t.float :length_time
    end
  end
end
