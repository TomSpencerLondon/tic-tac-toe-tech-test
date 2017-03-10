class TicTacToe

  attr_reader :board

  def initialize()
    @board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
    @player = true
  end

  def play(slot=0)
    raise "Slot in use" if slot_in_use?(slot)
    @board[slot] = @player
    raise "Game over" if no_slots_available?
    next_player
  end

  private

  def next_player
    @player = !@player
  end

  def slot_in_use?(slot)
    @board[slot] != nil
  end

  def no_slots_available?
    !@board.include? nil
  end
end
