# frozen_string_literal: true

require 'logger'

module FrilansFinansAPI
  class NilLogger < ::Logger
    def initialize(*args); end

    def add(*args); end
  end
end
