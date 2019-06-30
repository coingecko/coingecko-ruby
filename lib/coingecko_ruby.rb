require "coingecko_ruby/models/list"
require "coingecko_ruby/models/api_link"
require "http"
require 'json'

module CoingeckoRuby
  class Client
    def get_list
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(CoingeckoRuby::Models::ApiLink::LIST_URL))
      output.each do |output|
        list        = CoingeckoRuby::Models::List.new
        list.id     = output['id']
        list.symbol = output['symbol']
        list.name   = output['name']
      end
    end
  end
end