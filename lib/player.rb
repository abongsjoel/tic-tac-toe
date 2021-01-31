class Player
  POSIBLE_WINS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
  attr_accessor :name
  def initialize(name, mark)
    @name = name
    @mark = mark
    @collection = []
  end

  def make_move(board, value)
    @collection << value
    p @collection
    board.cell[board.positions[value][0]][board.positions[value][1]] = @mark
    board.display
  end
end
