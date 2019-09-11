# frozen_string_literal: true

module CoingeckoRuby::Services::Events
  class Countries < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.events_countries_url)
      adapt(output)
    end

    def adapt(output)
      output['data'].map do |output|
        country = CoingeckoRuby::Models::Event.new
        country.country = output['country']
        country.code = output['code']
        country
      end
    end
  end
end
