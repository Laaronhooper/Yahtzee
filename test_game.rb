require 'games_dice'

def roll
    dice = GamesDice.create '1d6'
    dice.roll
    dice.result
end 

def turn
    roll_result = []
    i = 0
    while i < 5
        roll_result = roll_result.push(self.roll)
    i += 1
    end
    roll_result
end

turn
p turn
p self.turn.delete_if {|x| x > 3}

def reroll
    puts "Would you like to reroll any dice? (y/n)"
    input = gets.chomp.strip.downcase
    if input == 'y'
        puts "getting there"
    elsif input == 'n'
        puts "turn"
    else 
        puts "y or n only please"
        self.reroll
    end    
end

reroll