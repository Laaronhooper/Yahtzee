require_relative 'dice.rb'
require_relative 'player.rb'

class Game 
    attr_reader :players, :current_player, :other_player, :dice
    def initialize(p1,p2)
        @players = [p1,p2]
        @current_index = 0
        @current_player = @players[@current_index]
        @other_player = @players[@current_index + 1]
        @turns = 0

    end
    def change_player
        if @current_player == @players[0]
          @current_player = @players[1]
        else
          @current_player = @players[0]
        end
    end
    def turn
        i = 0
        while i < 26
        game.change_player.name
        end
    end


end
