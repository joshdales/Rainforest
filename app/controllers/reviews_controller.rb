class ReviewsController < ApplicationController

  def review_params
    params.require(:review).permit(:name, :content, :product_id)
  end

  def create
    @review = Review.new(review_params)
    @product = @review.product

    if @review.save
      redirect_to product_path(@product), notice: "Review created"
    else
      redirect_to products_path, alert: "Errors have occured"
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @product = @review.product

    if @review.update(review_params)
      redirect_to product_path(@product), notice: "Review updated"
    else
      redirect_back_or_to product_review_path(@review.id), alert: "Errors have occured"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @product = @review.product

    @review.destroy
    redirect_to product_path(@product), alert: "This review was destroyed!"
  end

end
