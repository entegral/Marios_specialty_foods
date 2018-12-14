class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :content_body, :rating, :product_id, :presence => true
  validates_length_of :content_body, minimum: 50, maximum: 250, allow_blank: false
  validates :rating, numericality: {greater_than_or_equal_to: 1}
  validates :rating, numericality: {less_than_or_equal_to: 5}
end
