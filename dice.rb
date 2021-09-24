require 'games_dice'

dice = GamesDice.create '5d6'
puts dice.roll
puts dice.max 