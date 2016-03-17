describe Game do
  subject(:game) { described_class.new }
  let(:player) { double :player }
  let(:player2) { double :player2 }

  describe '#hugs' do
    it 'hugs the players' do
      expect(player).to receive(:hugged)
      game.hugs(player)
    end
  end
end
