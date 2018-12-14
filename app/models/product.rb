class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :origin, :presence => true

  def self.top3
   Product.joins(:reviews).group("products.id").order("count(product_id) DESC").limit(3)
  end

end
