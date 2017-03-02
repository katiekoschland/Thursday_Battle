
require 'player'

describe Player do
  subject(:bernard) { Player.new('Bernard') }
  subject(:katie) { Player.new('Katie') }
  DEFAULT_HIT_POINTS = 60
  describe '#name' do
    it 'returns the name' do
      expect(bernard.name).to eq 'Bernard'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(bernard.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(katie).to receive(:receive_damage)
      bernard.attack(katie)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { bernard.receive_damage }.to change { bernard.hit_points }.by(-10)
    end
  end
end
