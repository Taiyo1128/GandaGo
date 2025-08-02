class AddLatAndLngToSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :lat, :float
    add_column :spots, :lng, :float
  end
end
