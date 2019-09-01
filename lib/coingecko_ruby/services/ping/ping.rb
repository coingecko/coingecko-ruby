# frozen_string_literal: true

module CoingeckoRuby::Services::Ping
  class Ping < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.ping_url)
      output['gecko_says']
    end
  end
end
