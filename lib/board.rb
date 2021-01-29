class Board
  def initialize
    @cell = [[' ', ' ', ' '], [' ', 'X', ' '], [' ', ' ', 'O']]
  end

  def display
    puts " #{@cell[0][0]} | #{@cell[0][1]} | #{@cell[0][2]}  \n --+---+--"
    puts " #{@cell[1][0]} | #{@cell[1][1]} | #{@cell[1][2]}  \n --+---+--"
    puts " #{@cell[2][0]} | #{@cell[2][1]} | #{@cell[2][2]}  \n "
  end

  def update_board(value)
    p "Update value is #{value}"
  end
end