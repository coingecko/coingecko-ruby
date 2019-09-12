# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class List < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.exchanges_list_url)
      adapt(output)
    end

    def adapt(output)
      output.map do |output|
        exchange = CoingeckoRuby::Models::Exchange.new
        exchange.id = output['id']
        exchange.name = output['name']
        exchange
      end
    end
  end
end
