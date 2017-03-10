class TicTacToe

  attr_reader :board

  def initialize()
    @board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
    @player = true
  end

  def play(slot=0)
    @board[slot] = @player
    next_player
  end

  private

  def next_player
    @player = !@player
  end
end
