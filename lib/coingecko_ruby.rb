require "coingecko_ruby/models/list"
require "coingecko_ruby/models/api_link"
require "coingecko_ruby/models/simple_price"
require "http"
require 'json'
require 'byebug'

module CoingeckoRuby
  class Client
    def get_list
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(CoingeckoRuby::Models::ApiLink.list_url))
      lists = []
      output.each do |output|
        list        = CoingeckoRuby::Models::List.new
        list.id     = output['id']
        list.symbol = output['symbol']
        list.name   = output['name']
        lists << list
      end
      lists
    end

    def get_simple_price(ids, 
                         vs_currencies, 
                         include_market_cap = false, 
                         include_24hr_vol = false, 
                         include_24hr_change = false , 
                         include_last_updated_at = false)

      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(CoingeckoRuby::Models::ApiLink.simple_url(ids, 
                 vs_currencies, 
                 include_market_cap, 
                 include_24hr_vol, 
                 include_24hr_change, 
                 include_last_updated_at)))
      simple_prices = []
      output.map do |output|
        simple_price = CoingeckoRuby::Models::SimplePrice.new
        simple_price.last = output[1]["#{vs_currencies}"]
        simple_price.market_cap = output[1]["#{vs_currencies}_market_cap"]
        simple_price.vol_24h = output[1]["#{vs_currencies}_24h_vol"]
        simple_price.change_24h = output[1]["#{vs_currencies}_24h_change"]
        simple_price.last_updated_at = output[1]["last_updated_at"]
        simple_prices << simple_price
      end
        simple_prices
    end    
  end
end