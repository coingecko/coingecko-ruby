# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class ApiLink
      API_ENDPOINT = 'https://api.coingecko.com/api/v3'

      def self.list_url
        "#{API_ENDPOINT}/coins/list"
      end

      def self.simple_url(ids, vs_currencies, include_market_cap, include_24hr_vol, include_24hr_change, include_last_updated_at)
        "#{API_ENDPOINT}/simple/price?ids=#{ids}&vs_currencies=#{vs_currencies}&include_market_cap=#{include_market_cap}&include_24hr_vol=#{include_24hr_vol}&include_24hr_change=#{include_24hr_change}&include_last_updated_at=#{include_last_updated_at}"
      end

      def self.simple_token_price_url(id, contract_addresses, vs_currencies, include_market_cap, include_24hr_vol, include_24hr_change, include_last_updated_at)
        "#{API_ENDPOINT}/simple/token_price/#{id}?contract_addresses=#{contract_addresses}&vs_currencies=#{vs_currencies}&include_market_cap=#{include_market_cap}&include_24hr_vol=#{include_24hr_vol}&include_24hr_change=#{include_24hr_change}&include_last_updated_at=#{include_last_updated_at}"
      end

      def self.coin_url(id, localization, tickers, market_data, community_data, developer_data, sparkline)
        "#{API_ENDPOINT}/coins/#{id}?localization=#{localization}&tickers=#{tickers}&market_data=#{market_data}&community_data=#{community_data}&developer_data=#{developer_data}&sparkline=#{sparkline}"
      end

      def self.coin_markets_url(vs_currency, ids, order, per_page, page, sparkline, price_change_percentage)
        "#{API_ENDPOINT}/coins/markets/?vs_currency=#{vs_currency}&ids=#{ids}&order=#{order}&per_page=#{per_page}&page=#{page}&sparkline=#{sparkline}&price_change_percentage=#{price_change_percentage}"
      end

      def self.coin_tickers_url(id, exchange_ids, include_exchange_logo, page, order)
        "#{API_ENDPOINT}/coins/#{id}/tickers?exchange_ids=#{exchange_ids}&include_exchange_logo=#{include_exchange_logo}&page=#{page}&order=#{order}"
      end

      def self.coin_history_url(id, date, localization)
        "#{API_ENDPOINT}/coins/#{id}/history?date=#{date}&localization=#{localization}"
      end

      def self.coin_market_chart_url(id, vs_currency, days)
        "#{API_ENDPOINT}/coins/#{id}/market_chart?vs_currency=#{vs_currency}&days=#{days}"
      end

      def self.coin_market_chart_in_range_url(id, vs_currency, from, to)
        "#{API_ENDPOINT}/coins/#{id}/market_chart/range?vs_currency=#{vs_currency}&from=#{from}}&to=#{to}"
      end

      def self.coin_status_updates_url(id)
        "#{API_ENDPOINT}/coins/#{id}/status_updates"
      end

      def self.contract_coin_url(id, contract_address)
        "#{API_ENDPOINT}/coins/#{id}/contract/#{contract_address}"
      end

      def self.contract_market_chart_url(id, contract_address, vs_currency, days)
        "#{API_ENDPOINT}/coins/#{id}/contract/#{contract_address}/market_chart/?vs_currency=#{vs_currency}&days=#{days}"
      end

      def self.contract_market_chart_in_range_url(id, contract_address, vs_currency, from, to)
        "#{API_ENDPOINT}/coins/#{id}/contract/#{contract_address}/market_chart/range?vs_currency=#{vs_currency}&from=#{from}&to=#{to}"
      end

      def self.exchanges_url
        "#{API_ENDPOINT}/exchanges"
      end

      def self.exchanges_list_url
        "#{API_ENDPOINT}/exchanges/list"
      end

      def self.exchange_url(id)
        "#{API_ENDPOINT}/exchanges/#{id}"
      end

      def self.exchange_tickers_url(id, coin_ids, include_exchange_logo, page, order)
        "#{API_ENDPOINT}/exchanges/#{id}/tickers?coin_ids=#{coin_ids}&include_exchange_logo=#{include_exchange_logo}&page=#{page}&order=#{order}"
      end

      def self.exchange_status_updates_url(id)
        "#{API_ENDPOINT}/exchanges/#{id}/status_updates"
      end

      def self.ping_url
        "#{API_ENDPOINT}/ping"
      end

      def self.supported_vs_currencies_url
        "#{API_ENDPOINT}/simple/supported_vs_currencies"
      end

      def self.status_update_url(category, project_type, per_page, page)
        "#{API_ENDPOINT}/status_updates?category=#{category}&project_type=#{project_type}&per_page=#{per_page}&page=#{page}"
      end

      def self.events_url
        "#{API_ENDPOINT}/events"
      end

      def self.events_countries_url
        "#{API_ENDPOINT}/events/countries"
      end

      def self.global_url
        "#{API_ENDPOINT}/global"
      end

      def self.exchange_rates_url
        "#{API_ENDPOINT}/exchange_rates"
      end
    end
  end
end
