class ProductsController < ApplicationController

  def landing
    @lead = "Here at Marios we pride ourselves on making the best pastries while also providing you with the highest quality plumbing supplies outside of italy. Trust us, we've been building aquaducts for over 1500 years (and a lot of them still work today)."
    @landing = "active"
    @top5 = Product.top5
    @new3 = Product.new3
  end

  def index
    @lead = "Products Page"
    @index = "active"
    @products = Product.all
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end

  def new
  end

  def edit
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
    @reviews = @product.reviews
    @lead = @product.name
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end

end
