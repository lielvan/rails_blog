class Car < ApplicationRecord
  has_and_belongs_to_many :drivers
  has_one_attached :car_image
  enum color: [:blue, :yellow, :red]
  validates :title, :presence => true
  validates :car_image, attached: true, content_type: { in: 'image/png', message: 'is not a PNG' }
end
