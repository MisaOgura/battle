class Game

  attr_reader :players

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @players = [player1,player2]
  end

  def hugger
    @player1.turn ? players[0] : players[1]
  end

  def huggee
    players.select {|player| player != hugger}[0]
  end
end
