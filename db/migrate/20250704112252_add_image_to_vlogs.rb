class AddImageToVlogs < ActiveRecord::Migration[7.1]
  def change
    add_column :vlogs, :image, :string
  end
end
