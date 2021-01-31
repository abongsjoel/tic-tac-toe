class Player
  POSIBLE_WINS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
  attr_accessor :name
  @@available_moves = *(1..9)
  def initialize(name, mark)
    @name = name
    @mark = mark
    @collection = []
    @positions = { 1 => [0, 0], 2 => [0, 1], 3 => [0, 2],
                   4 => [1, 0], 5 => [1, 1], 6 => [1, 2],
                   7 => [2, 0], 8 => [2, 1], 9 => [2, 2] }
  end

  def make_move(board)
    puts "\n #{name} make a move"
    puts "\nAvailable moves: #{@@available_moves.join(', ')}\n"
    value = gets.chomp.to_i
    until @@available_moves.include?(value)
      puts "\nError! Error! Please select an availabe move"
      puts "\nAvailable moves: #{@@available_moves.join(', ')}\n"
      value = gets.chomp.to_i
    end
    @collection << value
    p @collection
    puts "\n"
    update_board(value, board)
    Player.update_availble_moves(value)
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

  def self.update_availble_moves(value)
    @@available_moves.reject! { |move| move == value }
  end

  private

  def update_board(value, board)
    board.cell[@positions[value][0]][@positions[value][1]] = @mark
    board.display
  end
end
