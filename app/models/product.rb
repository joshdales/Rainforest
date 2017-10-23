class Product < ApplicationRecord
  validates :name, :description, :price_in_cents, presence: true
  # validate :url_starts_with_http
  #
  # def url_starts_with_http
  #   return unless :url.present?
  #   errors.add(:url, "must start with http") if not :url.start_with?("http")
  # end

  has_many :reviews

  def price_in_dollars
    price_in_dollars = (price_in_cents.to_f) / 100
    sprintf("$%.2f", price_in_dollars)
  end
end
