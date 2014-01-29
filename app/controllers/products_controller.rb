class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new

  end

  def show
  	id = params[:id]
  	@product = Product.find(id)
  	@categories = @product.categories

  end

  def edit
  	id = params[:id]
  	@product = Product.find_by(id)
  	@categories = @product.categories

  	@all_categories = Category.all

  end

  def update
  	#binding.pry
  	id = params[:id]
  	product = Product.find(id)
    user_input = params.require(:product).permit(:name, :description, :price)
  
    product.update_attributes(user_input)

    category_ids = params[:product][:category_ids].select {|c| c != ""}

   

    cats = category_ids.map do |id|
    	Category.find(id)
    end
   raise cats.inspect
    product.categories = cats


    # product.category_ids.each do |id|
    # 	unless category_ids.include?(id)
    # 		product.categories.delete(id)
    # 		category_ids.delete(id)
    # 	end
    # end

    # prod_ids = product.category_ids


    # category_ids.each do |cat_id|
    # 	unless prod_ids.include?(cat_id.to_i)
    # 		product.categories << Category.find(cat_id)
    # 	end
    # end


    # binding.pry
    #raise params.inspect
    redirect_to product_path(product)
  end

  def destroy
  end

end
