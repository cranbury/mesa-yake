class LiveFeedController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @background_pic = "blackpic"
  end

  def show
    @rest = Restaurant.find(params[:id])
    @mesas = @rest.mesas
    @background_pic = "restaurantpic"
  end

  def create
    puts params
    @rest = Restaurant.find(params[:rest_id])
    table_pic = params[:current_status]
    @status = table_pic.original_filename

    File.open(Rails.root.join('app', 'assets', 'images', 'restaurante', "#{@rest.id}", "t#{params[:mesa_id]}.jpg"), 'wb') do |file|
      file.write(table_pic.read)
    end

    watson_response = IbmCloud.call("app/assets/images/restaurante/#{@rest.id}/t#{params[:mesa_id]}.jpg")
    puts watson_response
    Mesa.find(params[:mesa_id]).update(available: watson_response['images'][0]['classifiers'][0]['classes'][0]['class'] == 'mesas_vacias.zip')
    
    # @score = watson_response['images'][0]['classifiers'][0]['classes'][0]['score']

    redirect_to live_feed_path(params[:rest_id])
  end
end
