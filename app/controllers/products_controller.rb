class ProductsController < ApplicationController
  before_action :ensure_logged_in, except: [:index, :show]
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to products_url, notice: "This product is created"
    else
      render :new, alert: "Errors have occured"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: "Product updated"
    else
      render :edit, alert: "Errors have occured"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url, alert: "Product Deleted"
  end

end
