require 'games_dice'

class Dice
    attr_accessor :dice
    def initialize
        @dice = dice
    end
    def roll_of_die
        @dice = GamesDice.create '1d6'
        @dice.roll
        @dice.result
    end
    def roll_of_dice
        roll_result = []
        i =0
        while i < 5
            roll_result << self.roll_of_die
            i += 1
        end
        roll_result
    end
end

nr = Dice.new
p nr.roll_of_dice