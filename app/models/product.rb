class Product < ApplicationRecord
  validates :name, :description, :price_in_cents, presence: true

  has_many :reviews
end
