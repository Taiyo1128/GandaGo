class CreateLikebs < ActiveRecord::Migration[7.1]
  def change
    create_table :likebs do |t|
      t.references :spot, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
