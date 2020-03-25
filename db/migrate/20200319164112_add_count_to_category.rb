class AddCountToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :count, :integer, default: 0
  end
end
