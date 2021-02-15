require './lib/player'
require './lib/board'

describe Player do
  let(:player1) { Player.new('Mar', 'X') }
  let(:player2) { Player.new('Joel', 'O') }
  let(:board) { Board.new }

  describe "#make_move" do
    it "returns a board with player X mark at right position" do
      expect(player1.make_move(board, 3)).to eql("   |   | X  \n --+---+--\n   |   |    \n --+---+--\n   |   |    \n ")
    end
    it "returns a board with player O mark at right position" do
      expect(player2.make_move(board, 9)).to eql("   |   |    \n --+---+--\n   |   |    \n --+---+--\n   |   | O  \n ")
    end
  end

  describe "check_win" do
    it "returns true if player wins" do
      player1.collection = [4,5,6]
      expect(player1.check_win).to eql(true)
    end
  end

end