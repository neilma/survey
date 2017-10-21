# frozen_string_literal: true

module Models
  class Response
    attr_reader :email, :participant, :submitted_at, :answers

    def initialize(email:, employee_id:, submitted_at:, answers:)
      @participant = assign_participant(email: email, participant_id: employee_id)
      @submitted_at = submitted_at
      @answers = answers
    end

    private

    def assign_participant(email:, participant_id:)
      Models::Participant.new(email: email, id: participant_id)
    end
  end
end
