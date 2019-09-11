# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class Coin
      attr_accessor :id, :symbol, :name,
                    :block_time_in_minutes, :categories, :localization,
                    :description, :links, :image,
                    :country_origin, :genesis_date, :market_cap_rank,
                    :coingecko_rank, :coingecko_score, :developer_score,
                    :community_score, :liquidity_score, :public_interest_score,
                    :market_data, :community_data, :developer_data,
                    :public_interest_stats, :status_updates, :last_updated,
                    :tickers, :vs_currency, :ids, :current_price, :market_cap,
                    :total_volume, :high_24h, :low_24h, :price_change_24h,
                    :price_change_percentage_24h, :market_cap_change_24h,
                    :market_cap_change_percentage_24h, :total_supply,
                    :ath, :ath_change_percentage, :ath_date, :roi,
                    :sparkline_in_7d, :price_change_percentage_1h_in_currency,
                    :prices, :market_caps, :total_volumes, :asset_platform_id,
                    :contract_address, :sentiment_votes_up_percentage,
                    :sentiment_votes_down_percentage
    end
  end
end
