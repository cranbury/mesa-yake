class LiveFeedController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @rest = Restaurant.find(params[:id])
    @mesas = @rest.mesas
  end
  def create
    @rest = Restaurant.find(params[:rest_id])
    table_pic = params[:current_status]
    @status = table_pic.original_filename

    File.open(Rails.root.join('app', 'assets', 'images', 'restaurante', "#{@rest.id}", "t#{params[:mesa_id]}.jpg"), 'wb') do |file|
      file.write(table_pic.read)
    end
    watson_response = IbmCloud.call("app/assets/images/restaurante/#{@rest.id}/t#{params[:mesa_id]}.jpg")
    @status = watson_response['images'][0]['classifiers'][0]['classes'][0]['class'] == 'mesas_vacias.zip' ? 'Mesa disponible' : 'Mesa ocupada'
    @score = watson_response['images'][0]['classifiers'][0]['classes'][0]['score']
    redirect_to live_feed_path(params[:rest_id])
  end
end
