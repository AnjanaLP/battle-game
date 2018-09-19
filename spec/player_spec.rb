require 'player'

describe Player do
  subject(:anj) { described_class.new("Anj") }
  subject(:bob) { described_class.new("Bob") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(anj.name).to eq "Anj"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(bob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { bob.receive_damage }.to change { bob.hit_points }.by(-10)
    end
  end
end
