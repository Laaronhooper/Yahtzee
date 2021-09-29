require 'tty-progressbar'
require './controllers/player_controller.rb'
require 'tty-font'
require './models/Player.rb'
require './models/Game.rb'
font = TTY::Font.new(:DOOM)
# player_controller = PlayerController.new

# buid this out into a highscore? arcadia
begin
    puts "Welcome to \n#{font.write("YAHTZEE")}"
    puts "'p' to play, 'h' for highscore and 'q' to quit"
    case input = gets.chomp.downcase.strip
    when 'p'
        puts "What is your name player 1?"
        name1 = gets.chomp.capitalize
        player1 = Player.new(name:name1) 
        puts "Thanks #{name1}"
        puts "and your name player 2?"
        name2 = gets.chomp.capitalize
        player2 = Player.new(name:name2) 
        puts "Thanks #{name2}"
        game = Game.new(player1, player2)


        puts game.change_player.name
    end

end until ['n','quit', 'q'].include? input

# while game.players[0].life > 0 and game.players[1].life > 0 do

                            
