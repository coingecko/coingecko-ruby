# frozen_string_literal: true

module CoingeckoRuby
  class Client
    def ping
      CoingeckoRuby::Services::Ping::Ping.new.fetch
    end

    def simple_price(ids, vs_currencies, include_market_cap = false,
                     include_24hr_vol = false, include_24hr_change = false,
                     include_last_updated_at = false)
      CoingeckoRuby::Services::Simple::Price.new.fetch(
        ids, vs_currencies, include_market_cap,
        include_24hr_vol, include_24hr_change, include_last_updated_at
      )
    end

    def supported_vs_currencies
      CoingeckoRuby::Services::Simple::SupportedVsCurrencies.new.fetch
    end

    def list
      CoingeckoRuby::Services::Coins::List.new.fetch
    end

    def coin(id, localization = true, tickers = true, market_data = true,
             community_data = true, developer_data = true, sparkline = false)
      CoingeckoRuby::Services::Coins::Coin.new.fetch(
        id, localization, tickers,
        market_data, community_data, developer_data,
        sparkline
      )
    end

    def exchanges
      CoingeckoRuby::Services::Exchanges::Exchanges.new.fetch
    end

    def exchange(id)
      CoingeckoRuby::Services::Exchanges::Exchange.new.fetch(id)
    end
  end
end
