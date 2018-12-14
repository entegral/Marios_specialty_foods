class ProductsController < ApplicationController

  def landing
    @top3 = Product.top3
  end

  def index
    @products = Product.all
  end

  def create
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

end
