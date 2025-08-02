class AddDetailsToHotels < ActiveRecord::Migration[7.1]
  def change
    add_column :hotels, :lat, :float
    add_column :hotels, :lng, :float
  end
end
