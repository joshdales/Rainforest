class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @new_review = Review.new
    @reviews = Product.find(params[:id]).reviews
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path, notice: "This product is created"
    else
      redirect_to new_product_path, alert: "Errors have occured"
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
      redirect_to product_path(@product), alert: "Errors have occured"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, alert: "Product Deleted"
  end

end
