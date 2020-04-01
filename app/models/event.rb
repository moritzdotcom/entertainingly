class Event < ApplicationRecord
  belongs_to :category
  has_many :user_favourites, dependent: :destroy
  has_one_attached :photo

  validates_presence_of :name, message: 'Please enter a name'
  validates_presence_of :description, message: 'Please enter a description'
  validates_presence_of :category_id, message: 'Please select a category'
  validate :photo_is_attached

  def photo_is_attached
    errors.add(:photo, "Please upload a picture") unless photo.attached?
  end
end
