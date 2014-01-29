class CategoriesController < ApplicationController

  def index
  	@categories = Category.all
  end

  def show
  	id = params[:id]
  	@category = Category.find_by(id)
  end

  def new
  end

  def edit
  end

  def destroy
  end

end
