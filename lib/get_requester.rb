require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  attr_accessor :url

  def initialize url
    @url = url
  end

  def get_response_body
    response = Net::HTTP.get_response(URI.parse(@url))
    response.body
  end

  def parse_json
    programs = JSON.parse(get_response_body)
  end

end