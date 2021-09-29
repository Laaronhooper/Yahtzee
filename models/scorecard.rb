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
    # def ones
    #     @ones = 0
    # end
    # def ones=
    #     @ones = ones
    # end
    # def twos
    # end
    # def threes
    # end
    # def fours
    # end
    # def fives
    # end
    # def sixes
    # end
    # def three_of_a_kind
    # end
    # def four_of_a_kind
    # end
    # def full_house
    # end
    # def small_straight
    # end
    # def large_straight
    # end
    # def yahtzee
    # end
    # def chance
    # end
    def sum
        @sum = @ones + @twos + @threes + @fours + @fives + @sixes + @three_of_a_kind + @four_of_a_kind + @full_house + @small_straight + @large_straight + @yahtzee + @chance
    end
end

# test = Scorecard.new
# puts "ones"
# p test.ones
# test.ones=5
# p test.ones
# puts "twos"
# p test.twos
# test.twos=5
# p test.twos
# puts "sum"
# p test.sum