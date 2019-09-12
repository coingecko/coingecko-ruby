# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class VolumeChart < CoingeckoRuby::Services
    def fetch(id, days)
      output = super(CoingeckoRuby::Models::ApiLink.exchange_volume_chart_url(
        id, days
      ))
      adapt(output)
    end

    def adapt(output)
      exchange = CoingeckoRuby::Models::Exchange.new
      exchange.volume_chart = output
      exchange
    end
  end
end
