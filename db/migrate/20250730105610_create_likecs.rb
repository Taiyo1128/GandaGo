class CreateLikecs < ActiveRecord::Migration[7.1]
  def change
    create_table :likecs do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
