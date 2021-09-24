require 'games_dice'

dice = GamesDice.create '5d6'
dice1 = GamesDice.create '1d6'
dice2 = GamesDice.create '1d6'
dice3 = GamesDice.create '1d6'
dice4 = GamesDice.create '1d6'
dice5 = GamesDice.create '1d6'

# 1d10r:10,replace,1. Roll a 10-sided die, re-roll a result of 10 and take the value of the second roll
print "pre result " + dice.result.to_s
print "dice result " + dice.roll.to_s
print "dice max " + dice.max.to_s
print "dice min " + dice.min.to_s
print "dice result " + dice.minmax.to_s

dicerolls = []
dicerolls << dice1.roll << dice2.roll << dice3.roll << dice4.roll << dice5.roll
p dicerolls
puts dicerolls.sum

class Player 
    attr_accessor :name
    def initialize(name)
        @name = name
        @valid = false
    end
    def name=(name)
        @name = name
        @valid = !(@name.nil? || @name.empty?)
    end 
end
