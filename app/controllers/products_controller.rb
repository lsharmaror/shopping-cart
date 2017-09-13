# Controller for products
class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: 'index'
    else
      @products = Product.all
      render action: 'new'
    end
  end

  def product_params
    params.require(:products).permit(:product_name, :unit_price, :discount)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to action: 'show', id: @product
    else
      @products = Product.all
      render action: 'edit'
    end
  end

  def destroy
    Product.find(params[:id]).destroy
  end
end
