require 'games_dice'
require 'tty-prompt'

#roll is 1 dice with 6 sides rolled with the result provided
def roll_of_die
    dice = GamesDice.create '1d6'
    dice.roll
    dice.result
end 

def check_empty(roll_result)
    i = roll_result.length
    while i < 0
        roll_result = []
        i += 1
    end
    roll_result
end

def dramatic_effect
    sleep 0.5
    print"."
    sleep 0.5
    print "."
    sleep 0.5
    print ".\n"
    sleep 0.2
end

def initial_roll
    i =0
    roll_result = []
    while i < 5
        roll_result << roll_of_die
        i += 1
    end
    roll_result
    p roll_result
    reroll?(roll_result)
end


def roll_of_dice(roll_result)
    p roll_result.inspect 
    roll_result = check_empty(roll_result)
    p roll_result.inspect
    i = roll_result.length
    p i.inspect 
    p i
    while i < 5
        roll_result << roll_of_die
        i += 1
    end
    # dramatic_effect 
    roll_result
    p roll_result
    reroll?(roll_result)
end


def reroll?(roll_result)
    puts "Would you like to reroll any dice? (y/n)"
    while true
        case gets.chomp.strip.downcase
        when 'y'
            puts "Let's do it"
            select_dice(roll_result)
        when 'n'
            puts "Your roll was"
            print roll_result
            final_roll_result(roll_result)
            break
        end 
    end
end

def select_dice(roll_result)
    puts "Your roll was #{roll_result}"
    puts "Select a dice you'd like to change"
    input = gets.chomp.to_i - 1
    while true
        if input.between?(0,5)
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
    roll_result 
end    




SCORECARD = {
    ones: nil,
    twos: nil,
    threes: nil,
    fours: nil,
    fives: nil,
    sixes: nil,
    three_of_a_kind: nil,
    four_of_a_kind: nil,
    small_straight: nil,
    large_straight: nil,
    yahtzee: nil,
    chance: nil
}

initial_roll
