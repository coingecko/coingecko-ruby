# frozen_string_literal: true

require 'http'
require 'json'
require 'byebug'
require 'coingecko_ruby/client'

require 'coingecko_ruby/models/api_link'
require 'coingecko_ruby/models/coin'
require 'coingecko_ruby/models/exchange'
require 'coingecko_ruby/models/list'
require 'coingecko_ruby/models/simple'
require 'coingecko_ruby/models/status_update'
require 'coingecko_ruby/models/global'
require 'coingecko_ruby/models/exchange_rate'
require 'coingecko_ruby/models/event'

require 'coingecko_ruby/services/fetch'

require 'coingecko_ruby/services/ping/ping'

require 'coingecko_ruby/services/simple/price'
require 'coingecko_ruby/services/simple/token_price'
require 'coingecko_ruby/services/simple/supported_vs_currencies'

require 'coingecko_ruby/services/coins/list'
require 'coingecko_ruby/services/coins/coin'
require 'coingecko_ruby/services/coins/markets'
require 'coingecko_ruby/services/coins/tickers'
require 'coingecko_ruby/services/coins/history'
require 'coingecko_ruby/services/coins/market_chart'
require 'coingecko_ruby/services/coins/market_chart_in_range'
require 'coingecko_ruby/services/coins/status_updates'

require 'coingecko_ruby/services/contract/coin'
require 'coingecko_ruby/services/contract/market_chart'
require 'coingecko_ruby/services/contract/market_chart_in_range'

require 'coingecko_ruby/services/exchanges/exchanges'
require 'coingecko_ruby/services/exchanges/list'
require 'coingecko_ruby/services/exchanges/exchange'
require 'coingecko_ruby/services/exchanges/tickers'
require 'coingecko_ruby/services/exchanges/status_updates'
require 'coingecko_ruby/services/exchanges/volume_chart'

require 'coingecko_ruby/services/status_update/status_update'

require 'coingecko_ruby/services/events/events'
require 'coingecko_ruby/services/events/countries'

require 'coingecko_ruby/services/global/global'

require 'coingecko_ruby/services/exchange_rates/exchange_rates'
