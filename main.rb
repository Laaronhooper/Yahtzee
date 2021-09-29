require 'tty-progressbar'
require './controllers/player_controller.rb'
require 'tty-font'

font = TTY::Font.new(:DOOM)
player_controller = PlayerController.new

# buid this out into a highscore? arcadia
begin
    puts "Welcome to \n#{font.write("YAHTZEE")}"
    puts "'p' to play, 'h' for highscore and 'q' to quit"
    case input = gets.chomp.downcase.strip
    when 'p'
        puts "What is your name player 1?"
        input = gets.chomp.upcase
        p input
        puts "What is your name player 2?"
        player_controller.new 
        puts "Get ready to yahtzee!"
        # game.new
    end
end until ['n','quit', 'q'].include? input

