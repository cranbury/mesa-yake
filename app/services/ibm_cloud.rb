require 'net/http'
require 'uri'

class IbmCloud
  def self.call(img_path)
    # https://github.com/lostisland/faraday
    conn = Faraday.new(url: "https://gateway.watsonplatform.net") do |faraday|
      faraday.basic_auth('apikey', ENV["IBM_API_KEY"])
      faraday.request :multipart

      faraday.adapter :net_http
    end
    payload = {images_file: Faraday::UploadIO.new(File.open(Rails.root + img_path), 'image/jpeg'),
              # classifier_ids: "table_status_1980112004"
               owners:"me"}
    
    response = conn.post "/visual-recognition/api/v3/classify?version=2018-03-19", payload
    JSON.parse(response.body)
  end
end
