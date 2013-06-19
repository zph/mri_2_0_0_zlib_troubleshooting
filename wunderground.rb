require 'open-uri'
require 'json'

api_key = '' # required by producing your own API key from http://www.wunderground.com/weather/api/ 

open("http://api.wunderground.com/api/#{api_key}/geolookup/conditions/q/IA/Cedar_Rapids.json") do |f|
  json_string = f.read
  parsed_json = JSON.parse(json_string)
  location = parsed_json['location']['city']
  temp_f = parsed_json['current_observation']['temp_f']
  print "Current temperature in #{location} is: #{temp_f}\n"
end