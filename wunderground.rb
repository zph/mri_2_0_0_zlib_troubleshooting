
# Prepend local libs in front of Ruby Libs for Easy Tweaking
$:.unshift Dir.pwd
require 'open-uri'
require 'json'
require 'yaml'
require 'net/http' # Will prioritize local copy of net/http
require 'pry'

# File.write("curl_raw.txt", `curl -ivs --raw #{url}`)
api_key = YAML.load_file(File.expand_path "~/.wunderground")['key']

url = "http://api.wunderground.com/api/#{ api_key }/geolookup/conditions/q/IA/Cedar_Rapids.json"

open(url) do |f|
  json_string = f.read
  parsed_json = JSON.parse(json_string)
  location = parsed_json['location']['city']
  temp_f = parsed_json['current_observation']['temp_f']
  print "Current temperature in #{location} is: #{temp_f}\n"
end
