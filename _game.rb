require 'games_dice'
require 'tty-prompt'

require './models/Scorecard.rb'
require './models/Player.rb'
require './models/Game.rb'
require './models/Dice.rb'

player1 = Player.new('luke')
player2 = Player.new('sam')
yahtzee = Game.new(player1, player2)

puts "#{yahtzee.initial_roll}\n"
yahtzee.initial_roll {yahtzee.reroll?}