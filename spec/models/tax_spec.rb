# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FrilansFinansAPI::Tax do
  let(:default_headers) { FrilansFinansAPI::Client::HEADERS }
  let(:base_url) { 'https://frilansfinans.se/api' }
  let(:client) { FrilansFinansAPI::FixtureClient.new }

  describe '#taxes' do
    subject { described_class }

    it 'returns taxes' do
      resources = subject.index(client: client).resources
      expect(resources).to be_a(Array)
      expect(resources.first.id).to eq('0')
    end

    it 'can walk' do
      subject.walk(client: client) do |document|
        resources = document.resources
        expect(resources).to be_a(Array)
        expect(resources.first.id).to eq('0')
      end
    end
  end
end
