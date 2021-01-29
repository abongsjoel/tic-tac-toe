class Player
  attr_accessor :name
  def initialize(name, mark)
    @name = name
    @mark = mark
  end

  def make_move
    puts "\n #{self.name} make a move"
    puts "\n You can select a positive integer between 1 and 9"
    value = gets.chomp.to_i
    until value >= 1 && value <= 9
      puts "\nError! Please select a positive integer between 1 and 9 that has not been selected yet"
      value = gets.chomp.to_i
    end
    puts "\n Okay #{self.name}, now your move is displayed on the board: #{value}"
    value
  end
end