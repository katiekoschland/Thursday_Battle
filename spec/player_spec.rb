require 'spec_helper'
require 'player'

describe Player do
  subject(:bernard) { Player.new('Bernard') }

  describe '#name' do
    it 'returns the name' do
      expect(bernard.name).to eq 'Bernard'
    end
  end
end
