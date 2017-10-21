# frozen_string_literal: true

require 'spec_helper'

describe Models::Question do
  let(:question_attributes) do
    {
      theme: 'The Work',
      type: 'ratingquestion',
      text: 'I like the kind of work I do'
    }
  end

  subject(:question) { described_class.new(question_attributes) }

  describe 'attributes' do
    it 'returns theme' do
      expect(question.theme).to eq(question_attributes[:theme])
    end

    it 'returns type' do
      expect(question.type).to eq(question_attributes[:type])
    end

    it 'returns text' do
      expect(question.text).to eq(question_attributes[:text])
    end
  end
end
