describe Player do
  subject(:player) { described_class.new name}
  let(:name) { double :name }
  let(:player2_in_turn) { double :player2, hugs: nil, turn: true}
  let(:player2_not_in_turn) { double :player2, hugs: nil, turn: false}

  describe '#initialize' do
    it 'returns the player\'s name' do
      expect(player.name).to eq name
    end
    it 'has 0 hit points to start' do
      expect(player.hit_points).to eq described_class::HIT_POINTS
    end
    it 'initialises with turn: true' do
      expect(player.turn).to eq true
    end
  end

  describe '#hugs' do
    it 'changes turn to not_turn' do
      player2_in_turn.hugs(player)
      expect(player2_not_in_turn.turn).to eq false
    end

    it 'hugs the opponent' do
      expect(player).to receive(:hugs)
      player.hugs(player2_not_in_turn)
    end
  end
end
