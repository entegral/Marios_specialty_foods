class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :origin, :presence => true

  def self.top5
   Product.joins(:reviews).group("products.id").order("count(product_id) DESC").limit(5)
  end

  def self.new3
   Product.order("created_at DESC").limit(3)
  end

end
