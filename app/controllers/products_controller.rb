class ProductsController < ApplicationController

  def landing
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
