# frozen_string_literal: true

module CoingeckoRuby::Services::Simple
  class Price < CoingeckoRuby::Services
    def fetch(ids, vs_currencies, include_market_cap,
              include_24hr_vol, include_24hr_change,
              include_last_updated_at)
      output = super(CoingeckoRuby::Models::ApiLink.simple_url(ids, vs_currencies, include_market_cap,
                                                               include_24hr_vol, include_24hr_change,
                                                               include_last_updated_at))
      adapt(output, vs_currencies, ids)
    end

    def adapt(output, vs_currencies, ids)
      prices = []

      output.each do |output|
        price = CoingeckoRuby::Models::Simple.new
        price.ids = ids
        price.last = output[1][vs_currencies.to_s]
        price.market_cap = output[1]["#{vs_currencies}_market_cap"]
        price.vol_24h = output[1]["#{vs_currencies}_24h_vol"]
        price.change_24h = output[1]["#{vs_currencies}_24h_change"]
        price.last_updated_at = output[1]['last_updated_at']
        prices << price
      end
      prices
    end
  end
end
