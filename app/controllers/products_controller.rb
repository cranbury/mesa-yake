class ProductsController < ApplicationController
   def show
      @product = Product.find(params[:id])
      @background_pic = "restaurantpic"
   end
   
   def create

      table = Mesa.find_by(id:params[:mesa_id])
      
      product = Product.find_by(id:params[:product_id])
      
      meal = Meal.where(mesa_id: table.id).last
      
      order = Orden.create(meal_id:meal.id)
      OrdenProduct.create(product_id: product.id,orden_id:order.id, quantity:1)
      
      redirect_to "/restaurants/#{params[:restaurant_id]}/mesa/#{params[:mesa_id]}"#TABLES ORDERS

   end

   def index
      @product = Product.new
      @background_pic = "bg-dark"
      @restaurant = Restaurant.find_by(id: params[:restaurant_id])
      @products = Product.where(restaurant_id: params[:restaurant_id])
   end
end
