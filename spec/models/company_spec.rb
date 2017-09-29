# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FrilansFinansAPI::Company do
  let(:default_headers) { FrilansFinansAPI::Client::HEADERS }
  let(:base_url) { 'https://frilansfinans.se/api' }
  let(:client) { FrilansFinansAPI::FixtureClient.new }

  describe '#create' do
    subject { described_class }

    let(:valid_attributes) do
      json = client.read(:company_post)
      data = JSON.parse(json)['data']
      resource = FrilansFinansAPI::Resource.new(data)
      resource.attributes
    end

    it 'returns company' do
      company = subject.create(attributes: valid_attributes, client: client)
      expect(company.resource.attributes['name']).to eq('Acme')
      expect(company.resource.id).to eq('1')
    end
  end
end
