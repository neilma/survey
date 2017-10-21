# frozen_string_literal: true

require 'spec_helper'

describe Models::Answer do
  subject(:answer) { described_class.new(value: 1) }

  describe '.value' do
    it 'returns value' do
      expect(answer.value).to eq(1)
    end
  end
end
