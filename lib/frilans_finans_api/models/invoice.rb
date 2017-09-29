# frozen_string_literal: true

module FrilansFinansAPI
  class Invoice
    def self.create(attributes:, client: FrilansFinansAPI.config.client_klass.new)
      response = client.create_invoice(attributes: attributes)
      Document.new(response)
    end

    def self.show(id:, client: FrilansFinansAPI.config.client_klass.new)
      response = client.invoice(id: id)
      Document.new(response)
    end

    def self.update(id:, attributes:, client: FrilansFinansAPI.config.client_klass.new)
      response = client.update_invoice(id: id, attributes: attributes)
      Document.new(response)
    end
  end
end
