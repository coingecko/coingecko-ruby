module CoingeckoRuby
  module Models
    class ApiLink
      API_ENDPOINT = "https://api.coingecko.com/api/v3"

      def self.list_url
        "#{API_ENDPOINT}/coins/list"
      end

      def self.simple_url(ids, 
                          vs_currencies, 
                          include_market_cap = false, 
                          include_24hr_vol = false, 
                          include_24hr_change = false , 
                          include_last_updated_at = false)
        "#{API_ENDPOINT}/simple/price?ids=#{ids}&vs_currencies=#{vs_currencies}&include_market_cap=#{include_market_cap}&include_24hr_vol=#{include_24hr_vol}&include_24hr_change=#{include_24hr_change}&include_last_updated_at=#{include_last_updated_at}"
      end
    end
  end
end