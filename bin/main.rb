#!/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/board'

def tic_tac_toe
  player_x = Player.new('', 'X')
  player_o = Player.new('', 'O')
  board = Board.new
  intro(board)
  player_x.name = get_player('first')
  player_o.name = get_player('second')
  puts "\nNow lets start playing"
  play_game(player_x, player_o, board)
end

def play_game(player_x, player_o, board)
  turn_to_play = start_bid(player_x, player_o)
  puts "\n#{turn_to_play.name} wins bid to start"
  play = true
  while play
    puts "\n #{turn_to_play.name} make a move"
    value = get_value(board)
    puts "\n"
    puts turn_to_play.make_move(board, value)
    play = check_win_or_draw(turn_to_play, board)
    turn_to_play = turn_to_play == player_x ? player_o : player_x
  end
end

def check_win_or_draw(turn_to_play, board)
  if turn_to_play.check_win
    puts "\nCongratzzz #{turn_to_play.name}, you win. Lets pop the champagne"
    false
  elsif board.check_draw
    puts "\nWow, its a tie. Game ends"
    false
  else
    true
  end
end

def get_value(board)
  puts "\nAvailable moves: #{board.display_availble_moves}\n"
  value = gets.chomp.to_i
  until board.available_moves.include?(value)
    puts "\nError! Error! Please select an availabe move"
    puts "\nAvailable moves: #{board.display_availble_moves}\n"
    value = gets.chomp.to_i
  end
  board.update_availble_moves(value)
  value
end

def intro(board)
  puts "Hello and welcome to the world TIC-TAC-TOE\n\n"
  puts board.display
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

tic_tac_toe
