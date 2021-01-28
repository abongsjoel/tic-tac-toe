#!/usr/bin/env ruby

def tic_tac_toe
  intro
  [player_x, player_o] = get_players
  puts "\nNow lets start playing"
end

def intro
  puts "Hello and welcome to the world TIC-TAC-TOE\n\n"
  puts " 1 | 2 | 3 \n --+---+--"
  puts " 4 | 5 | 6 \n --+---+--"
  puts " 7 | 8 | 9 \n --+---+--"
  puts "\nType in your names to start this awesome game\n"
end

def get_players
  puts "\nName of first Player"
  player_x = gets.chomp
  puts "\nName of second Player"
  player_o = gets.chomp
  [player_x, player_o]
end

tic_tac_toe
