# frozen_string_literal: true

module Models
  class Answer
    attr_reader :value
    def initialize(value:)
      @value = value
    end
  end
end
