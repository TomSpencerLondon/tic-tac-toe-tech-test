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
      it "should allow player 1 to play counter in slot 0" do
        tictactoe.play(0)
        expect(tictactoe.board).to eq([true, nil, nil, nil, nil, nil, nil, nil, nil])
      end

      it "should allow player 1 to play counter in slot 3" do
        tictactoe.play(3)
        expect(tictactoe.board).to eq([nil, nil, nil, true, nil, nil, nil, nil, nil])
      end

      it "should allow player 1 to play counter in slot 0 and player 2 in slot 3" do
        tictactoe.play(0)
        tictactoe.play(3)
        expect(tictactoe.board).to eq([true, nil, nil, false, nil, nil, nil, nil, nil])
      end

      it "should raise an error if a player tries to play in a used slot" do
        tictactoe.play(0)
        expect{tictactoe.play(0)}.to raise_error("Slot in use")
      end

      it "should raise an error if there are no more slots available" do
        (0..7).each {|i| tictactoe.play(i)}
        expect{tictactoe.play(8)}.to raise_error("Game over")
      end
    end

    describe "Game winning" do
      it "Player 1 can win horizontally" do
        data = [0,3,1,4]
        data.each {|i| tictactoe.play(i)}
        expect(tictactoe.play(2)).to eq("Winner")
        expect(tictactoe.board).to eq([true, true, true, false, false, nil, nil, nil, nil])
      end

      it "Player 2 can win vertically" do
        data = [0,1,2,4,3]
        data.each {|i| tictactoe.play(i)}
        expect(tictactoe.play(7)).to eq("Winner")
        expect(tictactoe.board).to eq([true, false, true, true, false, nil, nil, false, nil])
      end

      it "Player 1 can win diagonally" do
        data = [0,2,4,5]
        data.each {|i| tictactoe.play(i)}
        expect(tictactoe.play(8)).to eq("Winner")
        expect(tictactoe.board).to eq([true, nil, false, nil, true, false, nil, nil, true])
      end

      it "Player 2 can win diagonally" do
        data = [1,2,5,4,7]
        data.each {|i| tictactoe.play(i)}
        expect(tictactoe.play(6)).to eq("Winner")
        expect(tictactoe.board).to eq([nil, true, false, nil, false, true, false, true, nil])
      end
    end
  end

end
