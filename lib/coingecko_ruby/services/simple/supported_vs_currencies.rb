# frozen_string_literal: true

module CoingeckoRuby::Services::Simple
  class SupportedVsCurrencies < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.supported_vs_currencies_url)
      adapt(output)
    end

    def adapt(output)
      output
    end
  end
end
