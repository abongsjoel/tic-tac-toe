#!/usr/bin/env ruby

def tic_tac_toe
  intro
  player_x = get_player('first')
  player_o = get_player('second')
  puts "\nNow lets start playing"
  turn_to_play = start_bid(player_x, player_o)
  puts "\n#{turn_to_play} wins bid to start"

  play = true
  while play do
    make_move(turn_to_play)
    turn_to_play = turn_to_play == player_x ? player_o : player_x
  end
  # if starter == player_x
  #   play_game(player_x, player_o)
  # else
  #   play_game(player_o, player_x)
  # end
end

def intro
  puts "Hello and welcome to the world TIC-TAC-TOE\n\n"
  puts "   |   |   \n --+---+--"
  puts "   |   |   \n --+---+--"
  puts "   |   |   \n "
  puts "\nType in your names to start this awesome game\n"
end

def get_player(position)
  puts "\nEnter name of #{position} Player"
  player = gets.chomp
  puts "\nWelcome #{player}"
  player
end

def start_bid(player_x, player_o)
  if rand(0..1).zero?
    player_x
  else
    player_o
  end
end

# def play_game(first, second)
#   make_move(first)
#   make_move(second)
# end

def make_move(player)
  puts "\n #{player} make a move"
  puts "\n You can select a positive integer between 1 and 9"
  value = gets.chomp.to_i
  until value >= 1 && value <= 9
    puts "\nError! Please select a positive integer between 1 and 9"
    value = gets.chomp.to_i
  end
  puts "\n Okay #{player}, now your move is displayed on the board: #{value}"
end

tic_tac_toe
