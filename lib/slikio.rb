require "slikio/version"
require 'rest_client'

class SlikIO
  def self.API_PRIVATE_KEY 
  	@API_PRIVATE_KEY
  end

  def self.API_PRIVATE_KEY=(val)
  	@API_PRIVATE_KEY=val
    @baseUrl = RestClient::Resource.new('https://app.slik.io/api/v1/', :user => val)
  end

  def self.sendData(collection_id, data)
  	raise "You must initialize API_PRIVATE_KEY first!" unless @API_PRIVATE_KEY
  	@baseUrl["collections/#{collection_id}/data"].post(:data => data)
  end
end
