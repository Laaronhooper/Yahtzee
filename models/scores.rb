class Scores
    attr_accessor :ones, :twos, :threes, :fours, :fives, :sixes, :three_of_a_kind, :four_of_a_kind, :full_house, :small_straight, :large_straight, :yahtzee, :chance
    attr_reader :sum
    def initialize
        @ones = 0
        @twos = 0
        @threes = 0
        @fours = 0
        @fives = 0
        @sixes = 0
        @three_of_a_kind = 0
        @four_of_a_kind = 0
        @full_house = 0
        @small_straight = 0
        @large_straight = 0
        @yahtzee = 0
        @chance = 0 
    end
    def ones(dice)
        @ones = dice.keep_if{|a| a == 1}.sum
    end
    def twos(dice)
        @twos = dice.keep_if{|a| a == 2}.sum
    end
    def threes(dice)
        @threes = dice.keep_if{|a| a == 3}.sum
    end
    def fours(dice)
        @fours = dice.keep_if{|a| a == 4}.sum
    end
    def fives(dice)
        @fives = dice.keep_if{|a| a == 5}.sum
    end
    def sixes(dice)
        @sixes = dice.keep_if{|a| a == 6}.sum
    end
    def sum
        @sum = @ones + @twos + @threes + @fours + @fives + @sixes + @three_of_a_kind + @four_of_a_kind + @full_house + @small_straight + @large_straight + @yahtzee + @chance
    end
    def where_to_score(dice)
        # passing the 
        puts "Where would you like to score your roll?"
        case input = gets.chomp.to_i
        when 1
            ones(dice)
        when 2
            twos(dice)
        when 3
            threes(dice)
        when 4
            fours(dice)
        when 5
            fives(dice)
        when 6
            sixes(dice)
        when 7
            three_of_a_kind(dice)
        when 8
            four_of_a_kind(dice)
        when 9
            full_house(dice)
        when 10
            small_straight(dice)
        when 11
            large_straight(dice)
        when 12
            yahtzee(dice)
        when 13
            chance(dice)
        else
            puts "error"
        end
    end
end