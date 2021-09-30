require 'games_dice'
class DiceSet
    def initialize
        @dice = [
            GamesDice.create '1d6',
            GamesDice.create '1d6',
            GamesDice.create '1d6',
            GamesDice.create '1d6',
            GamesDice.create '1d6',
        ]
    end
    
    def result 
        @dice.each {|d|d.result}
    end

    def roll(*keep)
        @dice.each do |d|
            # TODO implement keeping
            d.roll
        end
        @current
    end

    def check_empty(roll_result)
        i = roll_result.length
        while i < 0
            roll_result = []
            i += 1
        end
        roll_result
    end

    def reroll
        roll_result = check_empty(roll_result)
        p roll_result.inspect
        i = roll_result.length
        p i.inspect 
        p i
        while i < 5
            roll_result << dice.roll_of_die
            i += 1
        end 
        roll_result
        p roll_result
        reroll?(roll_result)
    end
end 
    



    d = Dice.new
    puts(d.current)
    puts(d.roll)
    puts(d.current)