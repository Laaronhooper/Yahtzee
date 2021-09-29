class Scorecard
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
    def sum
        @sum = @ones + @twos + @threes + @fours + @fives + @sixes + @three_of_a_kind + @four_of_a_kind + @full_house + @small_straight + @large_straight + @yahtzee + @chance
    end
end

