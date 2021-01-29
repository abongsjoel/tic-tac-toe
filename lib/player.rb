class Player
  attr_accessor :name
  @@available_moves = *(0..9)
  def initialize(name, mark)
    @name = name
    @mark = mark
    @positions = { 1 => [0, 0], 2 => [0, 1], 3 => [0, 2],
                   4 => [1, 0], 5 => [1, 1], 6 => [1, 2],
                   7 => [2, 0], 8 => [2, 1], 9 => [2, 2] }
  end

  def make_move(board)
    puts "\n #{self.name} make a move"
    # puts "\n You can select a positive integer between 1 and 9\n"
    puts "\nAvailable moves: #{@@available_moves.join(', ')}\n"
    value = gets.chomp.to_i
    until value >= 1 && value <= 9
      puts "\nError! Please select a positive integer between 1 and 9 that has not been selected yet"
      value = gets.chomp.to_i
    end
    puts "\n"
    update_board(value, board)
  end

  def check_win_or_draw
    # win = rand(0..9).eql?(5) ? true : false
    # draw = rand(0..8).eql?(4) ? true : false
    win = false
    draw = false
    if win
      puts "\nCongratzzz #{self.name}, you win. Lets pop the champagne"
      false
    elsif draw
      puts "\nWow, its a tie. Game ends"
      false
    else
      true
    end
  end

  private

  def update_board(value, board)
    board.cell[@positions[value][0]][@positions[value][1]] = @mark
    board.display
  end
end