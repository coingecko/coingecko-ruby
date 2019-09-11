# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Markets < CoingeckoRuby::Services
    def fetch(vs_currency, ids, order, per_page, page,
              sparkline, price_change_percentage)
      output = super(CoingeckoRuby::Models::ApiLink.coin_markets_url(
        vs_currency, ids, order, per_page, page,
        sparkline, price_change_percentage
      ))
      adapt(output)
    end

    def adapt(output)
      output.map do |output|
        coin = CoingeckoRuby::Models::Coin.new
        coin.id = output['id']
        coin.symbol = output['symbol']
        coin.name = output['name']
        coin.image = output['image']
        coin.current_price = output['current_price']
        coin.market_cap = output['market_cap']
        coin.market_cap_rank = output['market_cap_rank']
        coin.total_volume = output['total_volume']
        coin.high_24h = output['high_24h']
        coin.low_24h = output['low_24h']
        coin.price_change_24h = output['price_change_24h']
        coin.price_change_percentage_24h = output['price_change_percentage_24h']
        coin.market_cap_change_24h = output['market_cap_change_24h']
        coin.market_cap_change_percentage_24h = output['market_cap_change_percentage_24h']
        coin.total_supply = output['total_supply']
        coin.ath = output['ath']
        coin.ath_change_percentage = output['ath_change_percentage']
        coin.ath_date = output['ath_date']
        coin.roi = output['roi']
        coin.last_updated = output['last_updated']
        coin.sparkline_in_7d = output['sparkline_in_7d']
        coin.price_change_percentage_1h_in_currency = output['price_change_percentage_1h_in_currency']
        coin
      end
    end
  end
end
