class ReviewsController < ApplicationController

  def index
  end

  def create
    @product = Product.find(params[:product_id])
    new_review = @product.reviews.new(review_params)
    new_review.save
    redirect_to product_path(@product)
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating)
  end

end
