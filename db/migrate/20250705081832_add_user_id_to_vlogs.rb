class AddUserIdToVlogs < ActiveRecord::Migration[7.1]
  def change
    add_column :vlogs, :user_id, :integer
  end
end
