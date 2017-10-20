class Review < ApplicationRecord
  validates :name, :content, :product_id, presence: true

  belongs_to :product
  belongs_to :user
end
