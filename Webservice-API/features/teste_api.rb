require "httparty"

class TestAPI
  include HTTParty
  base_uri 'http://swapi.co/api/'
end
