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

    def coin_tickers(id, exchange_ids, include_exchange_logo = false, page = 1,
                     order = 'trust_score_desc')
      CoingeckoRuby::Services::Coins::Tickers.new.fetch(
        id, exchange_ids, include_exchange_logo, page,
        order
      )
    end

    def coin_history(id, date, localization = true)
      CoingeckoRuby::Services::Coins::History.new.fetch(
        id, date, localization
      )
    end

    def coin_market_chart(id, vs_currency, days)
      CoingeckoRuby::Services::Coins::MarketChart.new.fetch(
        id, vs_currency, days
      )
    end

    def coin_market_chart_in_range(id, vs_currency, from, to)
      CoingeckoRuby::Services::Coins::MarketChartInRange.new.fetch(
        id, vs_currency, from, to
      )
    end

    def coin_status_updates(id)
      CoingeckoRuby::Services::Coins::StatusUpdates.new.fetch(id)
    end

    def contract_coin(id, contract_address)
      CoingeckoRuby::Services::Contract::Coin.new.fetch(id, contract_address)
    end

    def contract_market_chart(id, contract_address, vs_currency, days)
      CoingeckoRuby::Services::Contract::MarketChart.new.fetch(id, contract_address, vs_currency, days)
    end

    def contract_market_chart_in_range(id, contract_address, vs_currency, from, to)
      CoingeckoRuby::Services::Contract::MarketChartInRange.new.fetch(id, contract_address, vs_currency, from, to)
    end

    def exchanges
      CoingeckoRuby::Services::Exchanges::Exchanges.new.fetch
    end

    def exchanges_list
      CoingeckoRuby::Services::Exchanges::List.new.fetch
    end

    def exchange(id)
      CoingeckoRuby::Services::Exchanges::Exchange.new.fetch(id)
    end

    def exchange_tickers(id, coin_ids = nil, include_exchange_logo = false, page = 1, order = 'trust_score_desc')
      CoingeckoRuby::Services::Exchanges::Tickers.new.fetch(id, coin_ids, include_exchange_logo, page, order)
    end

    def status_updates(category = '', project_type = '', per_page = 50, page = 1)
      CoingeckoRuby::Services::StatusUpdate::StatusUpdate.new.fetch(category, project_type, per_page, page)
    end

    def events
      CoingeckoRuby::Services::Events::Events.new.fetch
    end

    def events_countries
      CoingeckoRuby::Services::Events::Countries.new.fetch
    end

    def global
      CoingeckoRuby::Services::Global::Global.new.fetch
    end

    def exchange_rates
      CoingeckoRuby::Services::ExchangeRates::ExchangeRates.new.fetch
    end
  end
end
