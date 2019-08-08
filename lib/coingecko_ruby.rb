require "coingecko_ruby/models/list"
require "coingecko_ruby/models/api_link"
require "coingecko_ruby/models/simple_price"
require "coingecko_ruby/models/coin"
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

      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(CoingeckoRuby::Models::ApiLink.simple_url(ids, vs_currencies, include_market_cap, include_24hr_vol, include_24hr_change, include_last_updated_at)))
      simple_prices = []
      output.each do |output|
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

    def get_coin(id, 
                 localization = true, 
                 tickers = true, 
                 market_data = true, 
                 community_data = true,
                 developer_data = true, 
                 sparkline = false)
      output = JSON.parse(HTTP.timeout(:write => 2, :connect => 5, :read => 8).get(CoingeckoRuby::Models::ApiLink.coin_url(id, localization, tickers, market_data, community_data, developer_data, sparkline)))

      coin = CoingeckoRuby::Models::Coin.new
      coin.id = output["id"]
      coin.symbol = output["symbol"]
      coin.name = output["name"]
      coin.block_time_in_minutes = output["block_time_in_minutes"]
      coin.categories = output["categories"]
      coin.localization = output["localization"]
      coin.description = output["description"]
      coin.links = output["links"]
      coin.image = output["image"]
      coin.country_origin = output["country_origin"]
      coin.genesis_date = output["genesis_date"]
      coin.market_cap_rank = output["market_cap_rank"]
      coin.coingecko_rank = output["coingecko_rank"]
      coin.coingecko_score = output["coingecko_score"]
      coin.developer_score = output["developer_score"]
      coin.community_score = output["community_score"]
      coin.liquidity_score = output["liquidity_score"]
      coin.public_interest_score = output["public_interest_score"]
      coin.market_data = output["market_data"]
      coin.community_data = output["community_data"]
      coin.developer_data = output["developer_data"]
      coin.public_interest_stats = output["public_interest_stats"]
      coin.status_updates = output["status_updates"]
      coin.last_updated = output["last_updated"]
      coin.tickers = output["tickers"]
      
      coin
    end        
  end
end