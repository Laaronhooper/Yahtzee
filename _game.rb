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

player1 = Player.new('Luke')
player2 = Player.new('Sam')
game = Game.new(player1,player2)

puts game.current_player.name
puts "\n Your roll was:"
print game.current_player.rolls
puts "\n Would you like to reroll?"

while true
    case gets.chomp.strip.downcase
    when 'y'
        puts "Let's do it"
        input = gets.chomp.to_i - 1
        game.current_player.drop(input)
        print game.current_player.reroll
    when 'n'
        puts "Your roll was #{game.current_player.current_rolls}"
        game.current_player.score!(player1.current_rolls, input)
        print game.current_player.score 
        break
    end 
end






# if 'y'
game.current_player.drop

puts "\n"
p game.current_player.current_rolls
input = gets.chomp.to_i
print game.current_player.score!(player1.current_rolls, input)
print game.current_player.score







# notes
# encapsulate the logic
# keep array
