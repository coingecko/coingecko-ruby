# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class History < CoingeckoRuby::Services
    def fetch(id, date, localization)
      output = super(CoingeckoRuby::Models::ApiLink.coin_history_url(
        id, date, localization
      ))
      adapt(output)
    end

    def adapt(output)
      coin = CoingeckoRuby::Models::Coin.new
      coin.id = output['id']
      coin.symbol = output['symbol']
      coin.name = output['name']
      coin.localization = output['localization']
      coin.image = output['image']
      coin.market_data = output['market_data']
      coin.community_data = output['community_data']
      coin.developer_data = output['developer_data']
      coin.public_interest_stats = output['public_interest_stats']
      coin
    end
  end
end
