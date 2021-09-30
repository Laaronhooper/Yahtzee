require_relative 'dice.rb'
require_relative 'player.rb'

class Game 
    attr_reader :players, :current_player, :other_player, :dice
    def initialize(p1,p2)
        @dice = DiceSet.new
        @players = [p1,p2]
        @current_index = 0
        @current_player = @players[@current_index]
        @turns = 0
    end
    def change_player
        if @current_player == @players[0]
          @current_player = @players[1]
        else
          @current_player = @players[0]
        end
    end

   

    def reroll?(dice)
        while true
            case gets.chomp.strip.downcase
            when 'y'
                puts "Let's do it"
                p dice
                select_dice(dice)
            when 'n'
                puts "Your roll was #{yield}"
                final_roll_result(dice)
                break
            end 
        end
    end

    def check_empty
        i = roll_result.length
        while i < 0
            roll_result = []
            i += 1
        end
        roll_result
    end

    def roll(roll_result)
        roll_result = check_empty(roll_result)
        i = roll_result.length
        while i < 5
            roll_result << @dice
            i += 1
        end
        roll_result
        p roll_result
        reroll?(roll_result)
    end

    def select_dice
        puts "Your roll was #{roll_result}"
        puts "Select a dice you'd like to change"
        input = gets.chomp.to_i - 1
        while true
            if input.between?(0,5)
                # leaky
                roll_result.delete_at(input)
                break
            else
                puts "a number between 1 and 6 please"
            end
        end
        puts "You have these dice left #{roll_result}"
        puts "lets role again"
        p roll_result
        roll_of_dice(roll_result)
    end

    def final_roll_result(roll_result)
        puts "Your final roll is #{roll_result}"
        where_to_score(roll_result) 
    end    

    def turn
        i = 0
        while i < 26
        initial_roll
        puts "next player"
        game.change_player.name
        end
    end


end
