class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
  	id = params[:id]
  	@product = Product.find_by(id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
