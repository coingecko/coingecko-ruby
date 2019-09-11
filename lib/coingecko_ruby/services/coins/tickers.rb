# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Tickers < CoingeckoRuby::Services
    def fetch(id, exchange_ids, include_exchange_logo, page, order)
      output = super(CoingeckoRuby::Models::ApiLink.coin_tickers_url(
        id, exchange_ids, include_exchange_logo, page, order
      ))
      adapt(output)
    end

    def adapt(output)
      coin = CoingeckoRuby::Models::Coin.new
      coin.name = output['name']
      coin.tickers = output['tickers']
      coin
    end
  end
end
