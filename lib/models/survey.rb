# frozen_string_literal: true

module Models
  class Survey
    attr_reader :id, :questions, :responses

    def initialize(id:, questions:, responses:)
      @id = id
      @questions = questions
      @responses = responses
    end
  end
end
