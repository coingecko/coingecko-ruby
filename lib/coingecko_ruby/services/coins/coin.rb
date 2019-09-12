# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Coin < CoingeckoRuby::Services
    def fetch(id, localization, tickers,
              market_data, community_data, developer_data,
              sparkline)
      output = super(CoingeckoRuby::Models::ApiLink.coin_url(
        id, localization, tickers,
        market_data, community_data, developer_data,
        sparkline
      ))
      adapt(output)
    end

    def adapt(output)
      coin = CoingeckoRuby::Models::Coin.new
      coin.id = output['id']
      coin.symbol = output['symbol']
      coin.name = output['name']
      coin.block_time_in_minutes = output['block_time_in_minutes']
      coin.categories = output['categories']
      coin.localization = output['localization']
      coin.description = output['description']
      coin.links = output['links']
      coin.image = output['image']
      coin.country_origin = output['country_origin']
      coin.genesis_date = output['genesis_date']
      coin.market_cap_rank = output['market_cap_rank']
      coin.coingecko_rank = output['coingecko_rank']
      coin.coingecko_score = output['coingecko_score']
      coin.developer_score = output['developer_score']
      coin.community_score = output['community_score']
      coin.liquidity_score = output['liquidity_score']
      coin.public_interest_score = output['public_interest_score']
      coin.market_data = output['market_data']
      coin.community_data = output['community_data']
      coin.developer_data = output['developer_data']
      coin.public_interest_stats = output['public_interest_stats']
      coin.status_updates = output['status_updates']
      coin.last_updated = output['last_updated']
      coin.tickers = output['tickers']
      coin
    end
  end
end
