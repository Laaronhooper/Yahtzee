require './models/die.rb'
def testcase
    d = Die.new
    p d.rolls
    p d.current_rolls
end
testcase

require_relative 'score.rb'
require 'forwardable'
class Player
    extend Forwardable
    attr_accessor :name
    def_delegators :@ones, :@twos, :@threes, :@fours, :@fives, :@sixes
    def initialize(name)
        @name = name.capitalize
        @score = Score.new
        @dice = Die.new
    end
    def score!(current_rolls,input)
        @score.where_to_score(current_rolls, input)
    end
    def score
        @score.sum
    end
end

#delgated to instance of score
    # score delegates back
    # accept numerical value of score