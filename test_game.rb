require 'games_dice'
require 'tty-prompt'



P1SCORECARD = {
    ones: nil,
    twos: nil,
    threes: nil,
    fours: nil,
    fives: nil,
    sixes: nil,
    three_of_a_kind: nil,
    four_of_a_kind: nil,
    full_house: nil,
    small_straight: nil,
    large_straight: nil,
    yahtzee: nil,
    chance: nil
}


P2SCORECARD = {
    ones: nil,
    twos: nil,
    threes: nil,
    fours: nil,
    fives: nil,
    sixes: nil,
    three_of_a_kind: nil,
    four_of_a_kind: nil,
    full_house: nil,
    small_straight: nil,
    large_straight: nil,
    yahtzee: nil,
    chance: nil
}


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
            puts "Your roll was #{roll_result}"
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
    where_to_score(roll_result) 
end    

def where_to_score(final_roll_result)
    puts "Where would you like to score your roll?"
    case input = gets.chomp.to_i
    when 1
        ones(final_roll_result)
    when 2
        twos(final_roll_result)
    when 3
        threes(final_roll_result)
    when 4
        fours(final_roll_result)
    when 5
        fives(final_roll_result)
    when 6
        sixes(final_roll_result)
    when 7
        three_of_a_kind(final_roll_result)
    when 8
        four_of_a_kind(final_roll_result)
    when 9
        full_house(final_roll_result)
    when 10
        small_straight(final_roll_result)
    when 11
        large_straight(final_roll_result)
    when 12
        yahtzee(final_roll_result)
    when 13
        chance(final_roll_result)
    else
        puts "error"
    end
end

def ones(final_roll_result,)
    to_score = final_roll_result.keep_if{|a| a == 1}.sum
    P1SCORECARD[:ones] = to_score
    p P1SCORECARD
end

def twos(final_roll_result)
    to_score = final_roll_result.keep_if{|a| a == 2}.sum
    P1SCORECARD[:twos] = to_score
    p P1SCORECARD   
end

def threes(final_roll_result)
    to_score = final_roll_result.keep_if{|a| a == 3}.sum
    P1SCORECARD[:threes] = to_score
    p P1SCORECARD
end

def fours(final_roll_result)
    to_score = final_roll_result.keep_if{|a| a == 4}.sum
    P1SCORECARD[:fours] = to_score
    p P1SCORECARD 
end

def fives(final_roll_result)
    to_score = final_roll_result.keep_if { |a| a == 5}.sum
    P1SCORECARD[:fives] = to_score
    p P1SCORECARD
end

def sixes(final_roll_result)
    to_score = final_roll_result.keep_if { |a| a == 6}.sum
    P1SCORECARD[:sixes] = to_score
    p P1SCORECARD 
end


initial_roll
