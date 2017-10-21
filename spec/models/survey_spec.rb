# frozen_string_literal: true

require 'spec_helper'

describe Models::Survey do
  let(:question) { instance_double(Models::Question) }
  let(:response) { instance_double(Models::Response) }

  let(:survey_attributes) do
    {
      id: 1,
      questions: [question],
      responses: [response]
    }
  end

  subject(:survey) { described_class.new(survey_attributes) }

  describe 'attributes' do
    it 'returns id' do
      expect(survey.id).to eq(survey_attributes[:id])
    end

    it 'returns questions' do
      expect(survey.questions).to eq(survey_attributes[:questions])
    end

    it 'returns responses' do
      expect(survey.responses).to eq(survey_attributes[:responses])
    end
  end
end
