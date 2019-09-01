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

      def self.coin_url(id, localization, tickers, market_data, community_data, developer_data, sparkline)
        "#{API_ENDPOINT}/coins/#{id}?localization=#{localization}&tickers=#{tickers}&market_data=#{market_data}&community_data=#{community_data}&developer_data=#{developer_data}&sparkline=#{sparkline}"
      end

      def self.exchanges_url
        "#{API_ENDPOINT}/exchanges"
      end

      def self.exchange_url(id)
        "#{API_ENDPOINT}/exchanges/#{id}"
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
    end
  end
end
