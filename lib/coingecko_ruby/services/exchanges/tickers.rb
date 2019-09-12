# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class Tickers < CoingeckoRuby::Services
    def fetch(id, coin_ids, include_exchange_logo, page, order)
      output = super(CoingeckoRuby::Models::ApiLink.exchange_tickers_url(
        id, coin_ids, include_exchange_logo, page, order
      ))
      adapt(output)
    end

    def adapt(output)
      exchange = CoingeckoRuby::Models::Exchange.new
      exchange.tickers = output['tickers']
      exchange
    end
  end
end
