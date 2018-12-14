class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :content_body, :rating, :product_id, :presence => true
  validates :rating, numericality: {greater_than_or_equal_to: 1}
  validates :rating, numericality: {less_than_or_equal_to: 5}
end
