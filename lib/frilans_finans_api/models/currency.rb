# frozen_string_literal: true

module FrilansFinansAPI
  class Currency
    include Walker

    def self.index(page: 1, client: FrilansFinansAPI.config.client_klass.new)
      response = client.currencies(page: page)
      Document.new(response)
    end
  end
end
