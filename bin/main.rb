#!/usr/bin/env ruby

def tic_tac_toe
  intro
  player_x = get_player("first")
  player_o = get_player("second")
  puts "\nNow lets start playing"
  starter = start_bid(player_x, player_o)
  puts "\n#{starter} wins bid to start"
end

def intro
  puts "Hello and welcome to the world TIC-TAC-TOE\n\n"
  puts " 1 | 2 | 3 \n --+---+--"
  puts " 4 | 5 | 6 \n --+---+--"
  puts " 7 | 8 | 9 \n --+---+--"
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
