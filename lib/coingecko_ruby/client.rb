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

    def simple_token_price(id, contract_addresses, vs_currencies, include_market_cap = false,
                           include_24hr_vol = false, include_24hr_change = false,
                           include_last_updated_at = false)
      CoingeckoRuby::Services::Simple::TokenPrice.new.fetch(
        id, contract_addresses, vs_currencies, include_market_cap,
        include_24hr_vol, include_24hr_change,
        include_last_updated_at
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

    def coin_markets(vs_currency, ids, order = 'market_cap_desc', per_page = 100, page = 1,
                     sparkline = false, price_change_percentage = '1h')
      CoingeckoRuby::Services::Coins::Markets.new.fetch(
        vs_currency, ids, order, per_page, page,
        sparkline, price_change_percentage
      )
    end

    def exchanges
      CoingeckoRuby::Services::Exchanges::Exchanges.new.fetch
    end

    def exchange(id)
      CoingeckoRuby::Services::Exchanges::Exchange.new.fetch(id)
    end

    def status_updates(category = '', project_type = '', per_page = 50, page = 1)
      CoingeckoRuby::Services::StatusUpdate::StatusUpdate.new.fetch(category, project_type, per_page, page)
    end

    def global
      CoingeckoRuby::Services::Global::Global.new.fetch
    end

    def exchange_rates
      CoingeckoRuby::Services::ExchangeRates::ExchangeRates.new.fetch
    end
  end
end
