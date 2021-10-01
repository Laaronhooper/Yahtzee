require 'games_dice'
require 'tty-prompt'

require './models/scorecard.rb'
require './models/player.rb'
require './models/game.rb'
require './models/dice.rb'
require './models/die.rb'



# def game
#     player1 = Player.new('luke')
#     player2 = Player.new('sam')
#     yahtzee = Game.new(player1, player2)
#     puts "#{player1.name} rolling your dice then your move"
#     print "#{yahtzee.dice}\n"
#     puts "Would you like to reroll?"
#     yahtzee.reroll?(yahtzee.dice)

# end
player1 = Player.new('luke')
d = Die.new
p d.rolls
p d.current_rolls
p d.drop
p d.reroll
p d.current_rolls
input = gets.chomp.to_i
p player1.score!(d.current_rolls, input)
p player1.score



# notes
# encapsulate the logic
# keep array
