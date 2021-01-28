#!/usr/bin/env ruby

def tic_tac_toe
  intro
  player_x = get_player("first")
  player_o = get_player("second")
  puts "\nNow lets start playing"
end

def intro
  puts "Hello and welcome to the world TIC-TAC-TOE\n\n"
  puts " 1 | 2 | 3 \n --+---+--"
  puts " 4 | 5 | 6 \n --+---+--"
  puts " 7 | 8 | 9 \n --+---+--"
  puts "\nType in your names to start this awesome game\n"
end

def get_player(position)
  puts "\nName of #{position} Player"
  player = gets.chomp
  puts "\nWelcome #{player}"
  player
end

tic_tac_toe
