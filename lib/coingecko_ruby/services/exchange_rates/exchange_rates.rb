# frozen_string_literal: true

module CoingeckoRuby::Services::ExchangeRates
  class ExchangeRates < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.exchange_rates_url)
      adapt(output)
    end

    def adapt(output)
      exchange_rates = []
      output['rates'].each do |_key, output|
        exchange_rate = CoingeckoRuby::Models::ExchangeRate.new
        exchange_rate.name = output['name']
        exchange_rate.unit = output['unit']
        exchange_rate.value = output['value']
        exchange_rate.type = output['type']
        exchange_rates << exchange_rate
      end
      exchange_rates
    end
  end
end
