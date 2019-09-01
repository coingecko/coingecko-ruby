# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class Exchanges < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.exchanges_url)
      adapt(output)
    end

    def adapt(output)
      exchanges = []

      output.each do |output|
        exchange = CoingeckoRuby::Models::Exchange.new
        exchange.id = output['id']
        exchange.name = output['name']
        exchange.year_established = output['year_established']
        exchange.country = output['country']
        exchange.description = output['description']
        exchange.url = output['url']
        exchange.image = output['image']
        exchange.has_trading_incentive = output['has_trading_incentive']
        exchange.trade_volume_24h_btc = output['trade_volume_24h_btc']
        exchange.trade_volume_24h_btc_normalized = output['trade_volume_24h_btc_normalized']
        exchanges << exchange
      end
      exchanges
    end
  end
end
