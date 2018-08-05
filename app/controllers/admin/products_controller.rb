class Admin::ProductsController < ApplicationController

   def show
      @product = Product.find(params[:id])
      @background_pic = "restaurantpic"
   end
   
end



