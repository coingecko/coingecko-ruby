# frozen_string_literal: true

module CoingeckoRuby::Services::Global
  class Global < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.global_url)
      adapt(output['data'])
    end

    def adapt(output)
      global = CoingeckoRuby::Models::Global.new
      global.active_cryptocurrencies = output['active_cryptocurrencies']
      global.upcoming_icos = output['upcoming_icos']
      global.ongoing_icos = output['ongoing_icos']
      global.ended_icos = output['ended_icos']
      global.markets = output['markets']
      global.total_market_cap = output['total_market_cap']
      global.total_volume = output['total_volume']
      global.market_cap_percentage = output['market_cap_percentage']
      global.market_cap_change_percentage_24h_usd = output['market_cap_change_percentage_24h_usd']
      global.updated_at = output['updated_at']
      global
    end
  end
end
