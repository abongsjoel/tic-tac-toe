#!/usr/bin/env ruby

require_relative '../lib/player'

def tic_tac_toe
  player_x = Player.new('', 'X')
  player_o = Player.new('', 'O')
  intro
  player_x.name = get_player('first')
  player_o.name = get_player('second')
  puts "\nNow lets start playing"
  turn_to_play = start_bid(player_x, player_o)
  puts "\n#{turn_to_play.name} wins bid to start"

  play = true
  while play
    turn_to_play.make_move
    display_board
    play = check_win_or_draw(turn_to_play.name)
    turn_to_play = turn_to_play == player_x ? player_o : player_x
  end
end

def intro
  puts "Hello and welcome to the world TIC-TAC-TOE\n\n"
  display_board
  puts "\nType in your names to start this awesome game\n"
end

def display_board
  puts "   |   |   \n --+---+--"
  puts "   |   |   \n --+---+--"
  puts "   |   |   \n "
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



def check_win_or_draw(turn_to_play)
  win = rand(0..9).eql?(5) ? true : false
  draw = rand(0..8).eql?(4) ? true : false
  if win
    puts "\nCongratzzz #{turn_to_play}, you win. Lets pop the champagne"
    false
  elsif draw
    puts "\nWow, its a tie. Game ends"
    false
  else
    true
  end
end

tic_tac_toe
