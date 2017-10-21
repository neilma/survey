# frozen_string_literal: true

require 'spec_helper'

describe Models::Response do
  let(:answer) { instance_double(Models::Answer, value: nil) }
  let(:response_attributes) do
    {
      email: 'employee@xyz.com',
      employee_id: 1,
      submitted_at: Time.now,
      answers: [answer]
    }
  end

  subject(:response) { described_class.new(response_attributes) }

  describe 'attributes' do
    it 'returns email' do
      expect(response.participant.email).to eq(response_attributes[:email])
    end

    it 'returns participant_id' do
      expect(response.participant.id).to eq(response_attributes[:employee_id])
    end

    it 'returns submitted_at' do
      expect(response.submitted_at).to eq(response_attributes[:submitted_at])
    end

    it 'returns answers' do
      expect(response.answers).to eq(response_attributes[:answers])
    end
  end
end
