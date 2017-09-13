# controller for categories
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @products = Product.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to action: 'index'
    else
      @products = Product.all
      render action: 'new'
    end
  end

  def category_params
    params.require(:categories).permit(:category_name)
  end

  def edit
    @category = Category.find(params[:id])
    @products = Product.all
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to action: 'show', id: @category
    else
      @products = Product.all
      render action: 'edit'
    end
  end

  def delete
    Category.find(params[:id]).destroy
    redirect_to action: 'index'
  end
end
