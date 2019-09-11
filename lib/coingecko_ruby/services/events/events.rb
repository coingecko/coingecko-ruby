# frozen_string_literal: true

module CoingeckoRuby::Services::Events
  class Events < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.events_url)
      adapt(output)
    end

    def adapt(output)
      output['data'].map do |output|
        event = CoingeckoRuby::Models::Event.new
        event.type = output['type']
        event.title = output['title']
        event.description = output['description']
        event.organizer = output['organizer']
        event.start_date = output['start_date']
        event.end_date = output['end_date']
        event.website = output['website']
        event.email = output['email']
        event.venue = output['venue']
        event.address = output['address']
        event.city = output['city']
        event.country = output['country']
        event.screenshot = output['screenshot']
        event
      end
    end
  end
end
