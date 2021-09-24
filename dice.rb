require 'games_dice'

dice = GamesDice.create '5d6'
dice1 = GamesDice.create '1d6'
dice2 = GamesDice.create '1d6'
dice3 = GamesDice.create '1d6'
dice4 = GamesDice.create '1d6'
dice5 = GamesDice.create '1d6'



# 1d10r:10,replace,1. Roll a 10-sided die, re-roll a result of 10 and take the value of the second roll

print "pre result " + dice.result.to_s
puts ""
print "dice result " + dice.roll.to_s
puts ""
print "dice max " + dice.max.to_s
puts ""
print "dice min " + dice.min.to_s
puts ""
print "dice result " + dice.minmax.to_s
puts ""
# puts ""
# print "dice result " + dice.result.to_s
# probabilities = dice.probabilities
# puts ""
# print "probabilities" + probabilities.to_s
# distribution = probabilities.to_h
# puts ""
# print "distribution " + distribution.to_s

# puts "dice result " + dice1.roll.to_s
# puts "dice result " + dice2.roll.to_s
# puts "dice result " + dice3.roll.to_s
# puts "dice result " + dice4.roll.to_s
# puts "dice result " + dice5.roll.to_s

dicerolls = []
dicerolls << dice1.roll << dice2.roll << dice3.roll << dice4.roll << dice5.roll
p dicerolls
puts dicerolls.sum