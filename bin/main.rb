#!/usr/bin/env ruby

def tic_tac_toe
  intro
  player_x = get_player('first')
  player_o = get_player('second')
  puts "\nNow lets start playing"
  starter = start_bid(player_x, player_o)
  puts "\n#{starter} wins bid to start"
  if (starter == player_x)
    play_game(player_x, player_o)
  else
    play_game(player_o, player_x)
  end
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

def play_game(first, second)
  make_move(first)
  make_move(second)
end

def make_move(player)
  puts "\n #{player} make a move"
  puts "\n You can select a positive integer between 1 and 9"
  value = gets.chomp
  puts "\n Okay #{player}, now your move is displayed on the board"
end

tic_tac_toe
