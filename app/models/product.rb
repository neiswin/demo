class Product < ApplicationRecord
validates :title, :description, :image_url, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
validates :image_url, allow_blank: true, format: {
          with: %r{\.(gif|jpg|png)\z}i,
          message: 'URL must be in format jpg, png or gif'
}
end
