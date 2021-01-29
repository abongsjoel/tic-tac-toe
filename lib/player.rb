class Player
  attr_accessor :name
  def initialize(name, mark)
    @name = name
    @mark = mark
    @positions = { 1 => [0, 0], 2 => [0, 1], 3 => [0, 2],
                   4 => [1, 0], 5 => [1, 1], 6 => [1, 2],
                   7 => [2, 0], 8 => [2, 1], 9 => [2, 2] }
  end

  def make_move
    puts "\n #{self.name} make a move"
    puts "\n You can select a positive integer between 1 and 9"
    value = gets.chomp.to_i
    until value >= 1 && value <= 9
      puts "\nError! Please select a positive integer between 1 and 9 that has not been selected yet"
      value = gets.chomp.to_i
    end
    # puts "\n Okay #{self.name}, now your move is displayed on the board: #{value}"
    update_board(value)
  end

  private

  def update_board(value)
    p "Update value is #{@positions[value]}"
  end
end