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

  private

  def update_availble_moves(value)
    self.available_moves.reject! { |move| move == value }
  end

  def check_win_or_draw
    win = false
    draw = @@available_moves.empty?
    if @collection.length >= 3
      win_collect = []
      POSIBLE_WINS.each do |posible_win|
        win_collect.push((@collection.sort & posible_win) == posible_win)
      end
      win = win_collect.any?
    end

    if win
      puts "\nCongratzzz #{name}, you win. Lets pop the champagne"
      false
    elsif draw
      puts "\nWow, its a tie. Game ends"
      false
    else
      true
    end
  end
end
