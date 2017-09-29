# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FrilansFinansAPI::Walker do
  describe '#walk' do
    subject do
      Class.new do
        include FrilansFinansAPI::Walker

        def self.index(*_args)
          OpenStruct.new(
            resources: [1, 2, 3],
            total_pages: 3
          )
        end
      end
    end

    it 'returns all fetched resources as flat array' do
      expect(subject.walk).to eq([1, 2, 3] * 3)
    end

    it 'returns each document to passed block' do
      subject.walk do |document|
        expect(document.resources).to eq([1, 2, 3])
      end
    end
  end
end
