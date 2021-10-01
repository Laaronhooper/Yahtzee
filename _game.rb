require 'games_dice'
require 'tty-prompt'
require 'tty-table'

require './views/scorecard/new.rb'

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

# def thre

def turn
    player1 = Player.new('Luke')
    player2 = Player.new('Sam')
    game = Game.new(player1,player2)

    puts "#{game.current_player.name}\n"
    puts "Your roll was:\n"
    print "#{game.current_player.rolls}\n"
    puts "Would you like to reroll one die? (y/n)\n"
    answer = gets.strip.downcase
    if answer == 'y'
        puts "From left to right (1-5) which would you like to drop? #{game.current_player.current_rolls}\n"
        input = gets.chomp.to_i - 1
        game.current_player.drop(input)
        print "#{game.current_player.reroll}\n"
    else
    end
    puts "Your roll was #{game.current_player.current_rolls}"
    puts "Where would you like to score this role?"
    input = gets.chomp.to_i
    print "#{game.current_player.score!(game.current_player.current_rolls, input)}\n"
    # print Views::Scorecard.scorecard(game.current_player)
    print Views::Scorecard.scorecard(game)
    print "#{game.current_player.sum}"
end

turn
    # puts "Let's do it"
    # input = gets.chomp.to_i - 1
    # game.current_player.drop(input)
    # print "#{game.current_player.reroll}\n"


    # puts "Your roll was #{game.current_player.current_rolls}\n"
   
    # puts "#{game.current_player.ones}"
    # print "#{game.current_player.sum}"
    # game.change_player


# def turn
#     i = 0
#     while i < 26
#     initial_roll
#     puts "next player"
#     game.change_player.name
#     end
# end

# puts "#{game.current_player.name}\n"


    

# while true
#     if answer == 'y'
#         puts "Let's do it"
#         input = gets.chomp.to_i - 1
#         game.current_player.drop(input)
#         print game.current_player.reroll
#     when 'n'
#         puts "Your roll was #{game.current_player.current_rolls}"
#         game.current_player.score!(player1.current_rolls, input)
#         print game.current_player.score 
#         break
#     end 
# end




# if 'y'
# game.current_player.drop

# puts "\n"
# p game.current_player.current_rolls
# input = gets.chomp.to_i
# print game.current_player.score!(player1.current_rolls, input)
# print game.current_player.score







# notes
# encapsulate the logic
# keep array
