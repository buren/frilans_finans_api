# frozen_string_literal: true

module FrilansFinansAPI
  class Tax
    include Walker

    def self.index(page: 1, only_standard: false, client: FrilansFinansAPI.config.client_klass.new) # rubocop:disable Metrics/LineLength
      response = client.taxes(page: page, only_standard: only_standard)
      Document.new(response)
    end
  end
end
