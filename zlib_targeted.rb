$:.unshift Dir.pwd
$:.unshift 'http'
require 'json'
require 'pry'
require 'yaml'

socket_content = File.read('socket_content.bin')

def mri_200_expansion(socket_content)
  # Attempt taken from NET/HTTP & OpenURI
  zlib_inflater = Zlib::Inflate.new(32 + Zlib::MAX_WBITS)
  zlib_inflater.inflate socket_content
end

def restclient_expansion(socket_content)
  # Attempt taken from Rest-Client for broken web servers
  zlib_inflater = Zlib::Inflate.new(-Zlib::MAX_WBITS)
  zlib_inflater.inflate socket_content
end

def mri_193_expansion(socket_content)
  zlib_inflater = Zlib::Inflate.inflate(socket_content)
end

require'pry';binding.pry
