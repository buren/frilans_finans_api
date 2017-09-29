# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FrilansFinansAPI do
  let(:default_client_klass) { FrilansFinansAPI::Client }

  it 'has a version number' do
    expect(FrilansFinansAPI::VERSION).not_to be_nil
  end

  describe '#config' do
    it 'is present' do
      expect(described_class.config).to be_a(described_class::Configuration)
    end
  end
end
