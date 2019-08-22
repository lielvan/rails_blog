class Driver < ApplicationRecord
  has_and_belongs_to_many :cars
  has_one_attached :driver_image
  validates :name, :email, :presence => true
  # validates :driver_image, attached: true, content_type: { in: 'image/png', message: 'is not a PNG' }
end
