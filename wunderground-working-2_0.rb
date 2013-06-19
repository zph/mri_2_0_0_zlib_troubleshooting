require 'rest-client'
require 'json'

api_key = '' # required by producing your own API key from http://www.wunderground.com/weather/api/ 
url = "http://api.wunderground.com/api/#{api_key}/geolookup/conditions/q/IA/Cedar_Rapids.json"

res = RestClient.get url
parsed_json = JSON.parse(res)
location = parsed_json['location']['city']
temp_f = parsed_json['current_observation']['temp_f']
print "Current temperature in #{location} is: #{temp_f}\n"