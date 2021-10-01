class Score
    attr_accessor :ones, :twos, :threes, :fours, :fives, :sixes, :three_of_a_kind, :four_of_a_kind, :full_house, :small_straight, :large_straight, :yahtzee, :chance
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
    def ones=(dice)
        @ones = dice.select{|a| a == 1}.sum
    end
    def twos=(dice)
        @twos = dice.keep_if{|a| a == 2}.sum
    end
    def threes=(dice)
        @threes = dice.keep_if{|a| a == 3}.sum
    end
    def fours=(dice)
        @fours = dice.keep_if{|a| a == 4}.sum
    end
    def fives=(dice)
        @fives = dice.keep_if{|a| a == 5}.sum
    end
    def sixes=(dice)
        @sixes = dice.keep_if{|a| a == 6}.sum
    end
    def sum
        @ones + @twos + @threes + @fours + @fives + @sixes + @three_of_a_kind + @four_of_a_kind + @full_house + @small_straight + @large_straight + @yahtzee + @chance
    end
    def where_to_score(current_roll, input)
        case input 
        when 1
            self.ones = current_roll
        when 2
            self.twos = current_roll 
        when 3
            self.threes = current_roll 
        when 4
            self.fours = current_roll 
        when 5
            self.fives = current_roll 
        when 6
            self.sixes = current_roll 
        when 7
            self.three_of_a_kind = current_roll 
        when 8
            self.four_of_a_kind = current_roll 
        when 9
            self.full_house = current_roll 
        when 10
            self.small_straight = current_roll 
        when 11
            self.large_straight = current_roll 
        when 12
            self.yahtzee = current_roll 
        when 13
            self.chance = current_roll 
        end
    end
end