# frozen_string_literal: true

module Models
  class Participant
    attr_reader :id, :email

    def initialize(id:, email:)
      @id = id
      @email = email
    end
  end
end
