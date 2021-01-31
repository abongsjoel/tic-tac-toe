class Board
  
  attr_reader :cell, :available_moves, :positions
  attr_reader 
  def initialize
    @cell = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    @available_moves = *(1..9)
    @positions = { 1 => [0, 0], 2 => [0, 1], 3 => [0, 2],
                   4 => [1, 0], 5 => [1, 1], 6 => [1, 2],
                   7 => [2, 0], 8 => [2, 1], 9 => [2, 2] }
  end

  def display
    " #{@cell[0][0]} | #{@cell[0][1]} | #{@cell[0][2]}  \n --+---+--\n" +
    " #{@cell[1][0]} | #{@cell[1][1]} | #{@cell[1][2]}  \n --+---+--\n" +
    " #{@cell[2][0]} | #{@cell[2][1]} | #{@cell[2][2]}  \n "
  end

  def display_availble_moves
    self.available_moves.join(', ')
  end

  def check_draw
    draw = self.available_moves.empty?
  end

  def update_availble_moves(value)
    self.available_moves.reject! { |move| move == value }
  end

end
