require_relative 'player.rb'

class Game 
    attr_reader :players, :current_player, :other_player, :dice
    def initialize(p1,p2)
        @players = [p1,p2]
        @current_index = 0
        @current_player = @players[@current_index]
        

    end
    def change_player
        if @current_player == @players[0]
          @current_player = @players[1]
        else
          @current_player = @players[0]
        end
    end
end
