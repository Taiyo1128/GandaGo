class AddLatAndLngToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :lat, :float
    add_column :restaurants, :lng, :float
  end
end
