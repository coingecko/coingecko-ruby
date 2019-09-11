# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class StatusUpdates < CoingeckoRuby::Services
    def fetch(id)
      output = super(CoingeckoRuby::Models::ApiLink.coin_status_updates_url(id))
      adapt(output)
    end

    def adapt(output)
      output['status_updates'].map do |output|
        status_update = CoingeckoRuby::Models::StatusUpdate.new
        status_update.description = output['description']
        status_update.category = output['category']
        status_update.created_at = output['created_at']
        status_update.user = output['user']
        status_update.user_title = output['user_title']
        status_update.pin = output['pin']
        status_update.project = output['project']
        status_update
      end
    end
  end
end
