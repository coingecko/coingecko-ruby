# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class Global
      attr_accessor :active_cryptocurrencies, :upcoming_icos, :ongoing_icos, :ended_icos, :markets,
                    :total_market_cap, :total_volume, :market_cap_percentage,
                    :market_cap_change_percentage_24h_usd, :updated_at
    end
  end
end
