# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class Event
      attr_accessor :country, :code, :type, :title, :description, :organizer,
                    :start_date, :end_date, :website, :email,
                    :venue, :address, :city, :screenshot
    end
  end
end
