describe Game do
  subject(:game) { described_class.new player1, player2}
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe '#initialize' do
    it 'initializes with two player names' do
      expect(game.players).to include player1 && player2
    end
  end
end
