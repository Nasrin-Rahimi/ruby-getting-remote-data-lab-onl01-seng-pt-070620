# require 'open-uri'
# require 'net/http'
# require 'json'
# require 'pry'

# class GetRequester
  
#   attr_accessor :url
  
#   def initialize(url)
#     @url = url
#   end
  
#   def get_response_body
#     uri = URI.parse(@url)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end
  
#   def parse_json
#     converted_data = JSON.parse(self.get_response_body)
#   end
  
# end

# url = "https://api.covid19api.com/live/country/south-africa"

# request = GetRequester.new(url)
# binding.pry
# puts request.parse_json

require "uri"
require "net/http"

url = URI("https://corona-api.com/countries")

https = Net::HTTP.new(url.host, url.port);
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
puts response.read_body