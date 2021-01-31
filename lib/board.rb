class Board
  attr_accessor :cell
  def initialize
    @cell = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
  end

  def display
    " #{@cell[0][0]} | #{@cell[0][1]} | #{@cell[0][2]}  \n --+---+--\n" +
    " #{@cell[1][0]} | #{@cell[1][1]} | #{@cell[1][2]}  \n --+---+--\n" +
    " #{@cell[2][0]} | #{@cell[2][1]} | #{@cell[2][2]}  \n "
  end
end
