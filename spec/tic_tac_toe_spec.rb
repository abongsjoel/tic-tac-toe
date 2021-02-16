require './lib/player'
require './lib/board'

describe Player do
  let(:player1) { Player.new('Mar', 'X') }
  let(:player2) { Player.new('Joel', 'O') }
  let(:board) { Board.new }

  describe '#make_move' do
    it 'returns a board with player X mark at right position' do
      expect(player1.make_move(board, 3)).to eql("   |   | X  \n --+---+--\n   |   |    \n --+---+--\n   |   |    \n ")
    end
    it 'returns a board with player O mark at right position' do
      expect(player2.make_move(board, 9)).to eql("   |   |    \n --+---+--\n   |   |    \n --+---+--\n   |   | O  \n ")
    end
    it 'returns a board that is not empty' do
      expect(player1.make_move(board, 3)).not_to eql("   |   |   \n --+---+--\n   |   |    \n --+---+--\n   |   |    \n ")
    end
  end

  describe '#check_win' do
    it 'returns true if player wins' do
      player1.collection = [4, 5, 6]
      expect(player1.check_win).to eql(true)
    end
    it 'returns false if player does not win' do
      player1.collection = [4, 5]
      expect(player1.check_win).to eql(false)
    end
    it 'does not return false if player wins' do
      player2.collection = [1,2,3]
      expect(player2.check_win).not_to eql(false)
    end
    it 'does not return true if player does not wins' do
      player2.collection = [1,2,9]
      expect(player2.check_win).not_to eql(true)
    end
  end
end

describe Board do
  let(:board) { Board.new }
  describe '#display' do
    it 'returns an empty board' do
      expect(board.display).to eql("   |   |    \n --+---+--\n   |   |    \n --+---+--\n   |   |    \n ")
    end
    it 'does not return a board with content' do
      expect(board.display).not_to eql("   | O |    \n --+---+--\n   |   |    \n --+---+--\n   |   |    \n ")
    end
  end

  describe '#display_availble_moves' do
    it 'returns available moves' do
      expect(board.display_availble_moves).to eql('1, 2, 3, 4, 5, 6, 7, 8, 9')
    end
    it 'does not return false moves' do
      expect(board.display_availble_moves).not_to eql('1, 2, 3, 4, 5, 6, 7, 8')
    end
  end

  describe '#check_draw' do
    it 'returns true if available moves is empty' do
      board.available_moves = []
      expect(board.check_draw).to eql(true)
    end

    it 'returns false if available moves is not empty' do
      expect(board.check_draw).to eql(false)
    end
  end

  describe '#update_availble_moves' do
    it 'return array without value pass in' do
      expect(board.update_availble_moves(3)).to_not include(3)
    end
  end
end
