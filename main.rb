require 'tty-progressbar'
require './controllers/player_controller.rb'
require 'tty-font'

font = TTY::Font.new(:DOOM)
player_controller = PlayerController.new

# buid this out into a highscore? arcadia
begin
    puts "Would you like to play: \n#{font.write("YAHTZEE")}(y/n): "
    case input = gets.chomp.downcase.strip
    when 'y'
        puts "What is your name?"
        player_controller.new
    end
end until ['n','quit', 'q'].include? input

