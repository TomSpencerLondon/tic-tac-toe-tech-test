require "tictactoe"

describe TicTacToe do
  subject(:tictactoe) {described_class.new}

  context "New Game" do
    describe "#initialize" do
      it "should have an empty board" do
        expect(tictactoe.board).to eq([nil, nil, nil, nil, nil, nil, nil, nil, nil])
      end
    end

    describe "#play" do
      it "should allow user to play counter in a slot" do
        tictactoe.play(0)
        expect(tictactoe.board).to eq([true, nil, nil, nil, nil, nil, nil, nil, nil])
      end
    end
  end

end
