# frozen_string_literal: true

module CoingeckoRuby
  class Services
    def fetch(endpoint)
      JSON.parse(HTTP.timeout(write: 2, connect: 5, read: 8).get(endpoint))
    end
  end
end
