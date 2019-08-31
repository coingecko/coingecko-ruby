# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class Exchange
      attr_accessor :id, :name, :year_established, :country, :description,
                    :url, :image, :has_trading_incentive, :trade_volume_24h_btc,
                    :trade_volume_24h_btc_normalized
    end
  end
end
