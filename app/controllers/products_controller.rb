class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new

  end

  def show
  	id = params[:id]
  	@product = Product.find_by(id)
  	@categories = @product.categories
  end

  def edit
  	id = params[:id]
  	@product = Product.find_by(id)
  	@categories = @product.categories

  end

  def update
  end

  def destroy
  end

end
