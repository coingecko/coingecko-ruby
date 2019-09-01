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

require 'coingecko_ruby/services/fetch'

require 'coingecko_ruby/services/ping/ping'

require 'coingecko_ruby/services/simple/price'
require 'coingecko_ruby/services/simple/supported_vs_currencies'

require 'coingecko_ruby/services/coins/list'
require 'coingecko_ruby/services/coins/coin'

require 'coingecko_ruby/services/exchanges/exchanges'
require 'coingecko_ruby/services/exchanges/exchange'

require 'coingecko_ruby/services/status_update/status_update'
