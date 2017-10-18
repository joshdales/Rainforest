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
      render 'products/show', alert: "Errors have occured"
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
      render :edit, alert: "Errors have occured"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @product = @review.product

    @review.destroy
    redirect_to product_path(@product), alert: "This review was destroyed!"
  end

end
