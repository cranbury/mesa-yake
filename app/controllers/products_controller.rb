class ProductsController < ApplicationController
   def show
      @product = Product.find(params[:id])
      @background_pic = "restaurantpic"
   end

   def index
      @background_pic = "restaurantpic"
      @products = Product.all
   end

   
end
