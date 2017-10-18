class Review < ApplicationRecord
  validates :name, :content, presence: true

  belongs_to :product
end
