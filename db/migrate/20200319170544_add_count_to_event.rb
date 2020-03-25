class AddCountToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :count, :integer, default: 0
    add_column :events, :amazon_link, :string
  end
end
