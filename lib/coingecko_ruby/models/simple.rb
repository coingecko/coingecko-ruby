# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class Simple
      attr_accessor :last, :market_cap, :vol_24h, :change_24h,
                    :last_updated_at, :ids, :id, :contract_addresses
    end
  end
end
