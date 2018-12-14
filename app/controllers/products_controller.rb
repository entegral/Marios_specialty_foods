class ProductsController < ApplicationController

  def landing
    @top3 = Product.top3
  end

  def index
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
    @reviews = @product.reviews
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end

end
