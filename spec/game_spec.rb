describe Game do
  subject(:game) { described_class.new player1, player2}
  let(:player1) { double :player1, turn: true }
  let(:player2) { double :player2 }

  describe '#initialize' do
    it 'initializes with two player names' do
      expect(game.players).to include player1 && player2
    end
  end

  describe '#hugger' do
    it 'returns the name of hugger' do
      expect(game.hugger).to eq player1
    end

    # it 'returns the name of player 2'
  end

  describe '#huggee' do
    it 'returns the name of huggee' do
      expect(game.huggee).to eq player2
    end
  end
end
