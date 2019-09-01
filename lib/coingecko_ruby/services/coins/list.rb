# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class List < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.list_url)
      adapt(output)
    end

    def adapt(output)
      lists = []
      output.each do |output|
        list        = CoingeckoRuby::Models::Coin.new
        list.id     = output['id']
        list.symbol = output['symbol']
        list.name   = output['name']
        lists << list
      end
      lists
    end
  end
end
