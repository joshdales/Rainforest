class Review < ApplicationRecord
  validates :name, :content, :product_id, presence: true
  validate :product_id_validation

  def product_id_validation
    return unless not :product_id
    errors.add(:product_id, "Don't change the id") if product_id != @review.product_id
  end

  belongs_to :product
end
