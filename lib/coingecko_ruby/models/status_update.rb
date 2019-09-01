# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class StatusUpdate
      attr_accessor :description, :category, :created_at,
                    :user, :user_title, :pin, :project
    end
  end
end
