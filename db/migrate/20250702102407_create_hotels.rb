class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :hotel_name
      t.text :information

      t.timestamps
    end
  end
end
