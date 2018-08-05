class OrdensController < ApplicationController
  def new
    @orden = Orden.new
    @background_pic = "restaurantpic"
  end

  def create
     @orden = Orden.new(orden_params)
     @orden.save!
  end

  private
  def orden_params
    params.require(:orden).permit(:mesa_id)
  end

end
