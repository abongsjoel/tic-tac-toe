class Player
  POSIBLE_WINS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
  attr_accessor :name
  def initialize(name, mark)
    @name = name
    @mark = mark
   
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
  end




end
