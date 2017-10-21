# frozen_string_literal: true

module Models
  class Response
    attr_reader :email, :employee_id, :submitted_at, :answers

    def initialize(email:, employee_id:, submitted_at:, answers:)
      @email = email
      @employee_id = employee_id
      @submitted_at = submitted_at
      @answers = answers
    end
  end
end
