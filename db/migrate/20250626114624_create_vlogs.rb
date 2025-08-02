class CreateVlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :vlogs do |t|
      t.string :vlog_name
      t.text :information

      t.timestamps
    end
  end
end
