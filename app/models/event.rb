class Event < ApplicationRecord
  belongs_to :category
  has_many :user_favourites, dependent: :destroy
end
