# frozen_string_literal: true

module FrilansFinansAPI
  class User
    include Walker

    def self.create(attributes:, client: FrilansFinansAPI.config.client_klass.new)
      response = client.create_user(attributes: attributes)
      Document.new(response)
    end

    def self.update(id:, attributes:, client: FrilansFinansAPI.config.client_klass.new)
      response = client.update_user(id: id, attributes: attributes)
      Document.new(response)
    end

    def self.index(page: 1, email: nil, client: FrilansFinansAPI.config.client_klass.new)
      response = client.users(page: page, email: email)
      Document.new(response)
    end

    def self.show(id:, client: FrilansFinansAPI.config.client_klass.new)
      response = client.user(id: id)
      Document.new(response)
    end
  end
end
