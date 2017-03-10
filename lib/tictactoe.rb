class TicTacToe

  attr_reader :board

  def initialize()
    @board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
  end

  def play(slot=0)
    @board[slot] = true
  end
end
