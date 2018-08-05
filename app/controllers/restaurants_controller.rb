class RestaurantsController < ApplicationController
  def kitchen
  end

  def index
  end

  def show
      @background_pic = "restaurantpic"
  end

  def menu
      @background_pic = "restaurantpic"
      @products = Product.all
  end

end
