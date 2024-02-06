class Tournament < ApplicationRecord
    has_many :images, dependent: :destroy
    has_one_attached :thumbnail
  
    validates :title, presence: true
    validates :link, presence: true
  
    accepts_nested_attributes_for :images, allow_destroy: true
  
    # Add any additional validations or logic as needed
  end
