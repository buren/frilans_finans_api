# frozen_string_literal: true

module FrilansFinansAPI
  class Company
    def self.create(attributes:, client: FrilansFinansAPI.config.client_klass.new)
      response = client.create_company(attributes: attributes)
      Document.new(response)
    end
  end
end
