class MesaController < ApplicationController
  def show
    table = Mesa.find_by(id: params[:id])
    
    meal = Meal.where(mesa_id: table.id).last
    order = Orden.find_by(meal_id: meal.id)
    
    if order
      @products = OrdenProduct.where(orden_id: order.id)
    else
      @products = []
    end
    
    
    #byebug
    
  end
end
