class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :ip_address
      t.string :user_agent
      t.integer :count, default: 1

      t.timestamps
    end
  end
end
