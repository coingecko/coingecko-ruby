# frozen_string_literal: true

module CoingeckoRuby::Services::Contract
  class MarketChart < CoingeckoRuby::Services
    def fetch(id, contract_address, vs_currency, days)
      output = super(CoingeckoRuby::Models::ApiLink.contract_market_chart_url(
        id, contract_address, vs_currency, days
      ))
      adapt(output)
    end

    def adapt(output)
      coin = CoingeckoRuby::Models::Coin.new
      coin.prices = output['prices']
      coin.market_caps = output['market_caps']
      coin.total_volumes = output['total_volumes']
      coin
    end
  end
end
