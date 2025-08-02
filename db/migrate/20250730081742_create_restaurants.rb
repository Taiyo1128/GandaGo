class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.text :information

      t.timestamps
    end
  end
end
