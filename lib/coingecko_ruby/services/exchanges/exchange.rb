# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class Exchange < CoingeckoRuby::Services
    def fetch(id)
      output = super(CoingeckoRuby::Models::ApiLink.exchange_url(id))
      adapt(output)
    end

    def adapt(output)
      exchange = CoingeckoRuby::Models::Exchange.new
      exchange.name = output['name']
      exchange.year_established = output['year_established']
      exchange.country = output['country']
      exchange.description = output['description']
      exchange.url = output['url']
      exchange.image = output['image']
      exchange.has_trading_incentive = output['has_trading_incentive']
      exchange.trade_volume_24h_btc = output['trade_volume_24h_btc']
      exchange.trade_volume_24h_btc_normalized = output['trade_volume_24h_btc_normalized']
      exchange.tickers = output['tickers']
      exchange.status_updates = output['status_updates']

      exchange
    end
  end
end
