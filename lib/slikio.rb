require "slikio/version"
require 'rest_client'

class SlikIO
  def self.API_PRIVATE_KEY 
  	@API_PRIVATE_KEY
  end

  def self.API_PRIVATE_KEY=(val)
  	@API_PRIVATE_KEY=val
  end

  def self.sendData(collection_id, data)
  	raise "You must initialize API_PRIVATE_KEY first!" unless @API_PRIVATE_KEY
  	url = "https://#{@API_PRIVATE_KEY}:@app.slik.io/api/v1/collections/#{collection_id}/data"
  	RestClient.post(url, :data => data)
  end
end
