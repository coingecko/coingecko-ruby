# frozen_string_literal: true

module CoingeckoRuby::Services::StatusUpdate
  class StatusUpdate < CoingeckoRuby::Services
    def fetch(category, project_type, per_page, page)
      output = super(CoingeckoRuby::Models::ApiLink.status_update_url(category, project_type, per_page, page))
      adapt(output)
    end

    def adapt(output)
      status_updates = []
      output['status_updates'].each do |output|
        status_update = CoingeckoRuby::Models::StatusUpdate.new
        status_update.description = output['description']
        status_update.category = output['category']
        status_update.created_at = output['created_at']
        status_update.user = output['user']
        status_update.user_title = output['user_title']
        status_update.pin = output['pin']
        status_update.project = output['project']
        status_updates << status_update
      end
      status_updates
    end
  end
end
