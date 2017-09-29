# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FrilansFinansAPI::Invoice do
  let(:default_headers) { FrilansFinansAPI::Client::HEADERS }
  let(:base_url) { 'https://frilansfinans.se/api' }
  let(:client) { FrilansFinansAPI::FixtureClient.new }

  describe '#create' do
    subject { described_class }

    let(:valid_attributes) do
      json = client.read(:invoice_post)
      data = JSON.parse(json)['data']
      resource = FrilansFinansAPI::Resource.new(data)
      resource.attributes
    end

    it 'returns invoice' do
      invoice = subject.create(attributes: valid_attributes, client: client)
      expect(invoice.resource.attributes).to eq({})
    end
  end

  describe '#show' do
    subject { described_class }

    it 'returns invoice' do
      invoice = subject.show(id: 1, client: client)
      expect(invoice.resource.attributes).to eq({})
    end
  end

  describe '#update' do
    subject { described_class }

    let(:valid_attributes) do
      json = client.read(:invoice_post)
      data = JSON.parse(json)['data']
      resource = FrilansFinansAPI::Resource.new(data)
      resource.attributes
    end

    it 'returns invoice' do
      invoice = subject.update(id: 1, attributes: valid_attributes, client: client)
      expect(invoice.resource.attributes).to eq({})
    end
  end
end
