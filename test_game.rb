require 'games_dice'


#roll is 1 dice with 6 sides rolled with the result provided
def roll
    dice = GamesDice.create '1d6'
    dice.roll
    dice.result
end 

# turn must take in a optional argument 
# def(*roll_result)
# roll_result = nil || *roll_result.take out of the array and place into [a,b,c,d]
# if 

def turn
    roll_result = []
    i = 0
    while i < 5
        roll_result.push(roll)
        i += 1
    end
    roll_result
    p roll_result
    reroll?(roll_result)
end

# need to impliment only 2 rerolls

def reroll?(roll_result)
    # takes an arry
    # if array.length < 5
    puts "Would you like to reroll any dice? (y/n)"
    input = gets.chomp.strip.downcase
    if input == 'y'
        puts "Let's do it"
        select_dice(roll_result)
    elsif input == 'n'
        puts "Your roll was"
        p turn
    else 
        puts "y or n only please"
        reroll?
    end    
end

#selects a dice in an array of intigers and asks to reroll 1 dice
#future itter will multi select dice
def select_dice(roll_result)
    puts "Your roll was #{roll_result}"
    puts "Select a dice you'd like to change"
    input = gets.chomp.to_i - 1
    if input.between?(0,5)
        roll_result.delete_at(input)
    else
        puts "a number between 1 and 6 please"
        self
    end
    
    puts "You have these dice left #{roll_result}"
    puts "lets role again"
    p roll_result
    turn(roll_result)
end

turn
