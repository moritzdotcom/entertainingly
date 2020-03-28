class RemoveImageUrlFromCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :image_url, :string
    remove_column :events, :image_url, :string
  end
end
