# frozen_string_literal: true

module FrilansFinansAPI
  class EmploymentCertificate
    def self.create(attributes:, client: FrilansFinansAPI.config.client_klass.new)
      client.create_employment_certificate(attributes: attributes)
      nil
    end
  end
end
