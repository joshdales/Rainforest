class ReviewsController < ApplicationController
  before_action :ensure_logged_in
  before_action :ensure_review_owner, except: [:create]

  def create
    @product        = Product.find(params[:product_id])
    @review         = Review.new
    @review.content = params[:review][:content]
    @review.rating  = params[:review][:rating]
    @review.user = current_user
    @review.product = @product

    if @review.save
      redirect_to product_url(@product), notice: "Review created"
    else
      redirect_to product_url(@product), alert: "Errors have occured"
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.content = params[:review][:content]

    @product = @review.product

    if @review.save
      redirect_to product_url(@product), notice: "Review updated"
    else
      render :edit, alert: "Errors have occured"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @product = @review.product

    @review.destroy
    redirect_to product_url(@product.id), alert: "This review was destroyed!"
  end
end
