class ReviewsController < ApplicationController
  before_action :ensure_logged_in

  def create
    @review = Review.new
    @review.name = params[:review][:name]
    @review.content = params[:review][:content]
    @review.product_id = params[:review][:product_id]

    @product = @review.product

    if @review.save
      redirect_to product_url(@product), notice: "Review created"
    else
      render product_url(@product), alert: "Errors have occured"
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.name = params[:review][:name]
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
    redirect_to product_url(@product), alert: "This review was destroyed!"
  end

end
