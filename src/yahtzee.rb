# % cat lib/yahtzee.rb
require 'games_dice'
require 'tty-prompt'
require 'tty-font'
require 'tty-table'
require_relative './controllers/player_controller.rb'
require './views/scorecard/new.rb'
require_relative './views/player/new.rb'
require_relative './models/player.rb'
require_relative './models/game.rb'
require_relative './models/die.rb'

font = TTY::Font.new(:DOOM)
# bar = TTY::ProgressBar.new("downloading [:bar]", total: 26)
puts "Welcome to \n#{font.write("YAHTZEE")}"
# player_controller = PlayerController.new
# player1 = player_controller.new

print "Enter Player 1 name: "
name1 = gets.chomp.to_s
puts "Great thanks #{name1}"
print "Enter Player 2 name: "
name2 = gets.chomp.to_s
puts "Great thanks #{name2}"
puts "#{font.write("LETS PLAY!")}"
player1 = Player.new(name1)
player2 = Player.new(name2)
game = Game.new(player1,player2)
def turn(game)
    while true
        x = 0
        if x < 26
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
            puts "Where would you like to score this role #{game.current_player.name}?"
            Views::Scorecard.scorecard(game)
            input = gets.chomp.to_i
            print "#{game.current_player.score!(game.current_player.current_rolls, input)}\n"
            Views::Scorecard.scorecard(game)
            game.current_player.drop_all
            game.change_player
            x +=1
        else
        puts "game over"
        end
    end
end

turn(game)