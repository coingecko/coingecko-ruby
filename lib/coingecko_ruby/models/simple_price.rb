# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class SimplePrice
      attr_accessor :last, :market_cap, :vol_24h, :change_24h,
                    :last_updated_at
    end
  end
end
