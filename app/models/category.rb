class Category < ApplicationRecord
  has_many :events, dependent: :destroy
  has_one_attached :photo

  validates_presence_of :name, message: 'Please enter a name'
  validate :photo_is_attached

  def photo_is_attached
    errors.add(:photo, "Please upload a picture") unless photo.attached?
  end
end
