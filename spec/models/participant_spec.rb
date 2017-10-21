# frozen_string_literal: true

require 'spec_helper'

describe Models::Participant do
  let(:id) { 1 }
  let(:email) { 'foo@bar.com' }
  subject(:participant) { described_class.new(id: id, email: email) }

  describe 'attributes' do
    it 'returns id' do
      expect(participant.id).to eq(id)
    end

    it 'returns email' do
      expect(participant.email).to eq(email)
    end
  end
end
