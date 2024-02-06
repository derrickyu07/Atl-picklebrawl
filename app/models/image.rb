class Image < ApplicationRecord
  belongs_to :tournament

  validates :url, presence: true

  # Assuming you want to limit the image types to a specific format, adjust as needed
  validates :url, format: { with: /\.(png|jpg|jpeg|gif)\z/i, message: 'must be a valid image format' }

  # Add any additional validations or logic as needed
end
