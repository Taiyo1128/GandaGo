class AddImageToSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :image, :string
  end
end
