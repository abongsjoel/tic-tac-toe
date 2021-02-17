class Player
  POSIBLE_WINS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
  attr_accessor :name
  attr_writer :collection

  def initialize(name, mark)
    @name = name
    @mark = mark
    @collection = []
  end

  def make_move(board, value)
    @collection << value
    board.cell[board.positions[value][0]][board.positions[value][1]] = @mark
    board.display
  end

  def check_win
    win = false
    if @collection.length >= 3
      win_collect = []
      POSIBLE_WINS.each do |posible_win|
        win_collect.push((@collection.sort & posible_win) == posible_win)
      end
      win = win_collect.any?
    end
    win
  end
end
