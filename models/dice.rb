require 'games_dice'

class Dice
    attr_accessor :dice
    def initialize
        @dice = dice
    end
    def roll_of_die
        dice = GamesDice.create '1d6'
        dice.roll
        dice.result
    end 
end